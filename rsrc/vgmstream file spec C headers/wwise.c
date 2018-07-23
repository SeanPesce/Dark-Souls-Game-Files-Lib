#include "meta.h"
#include "../util.h"
#include "../coding/coding.h"


/* Wwise uses a custom RIFF/RIFX header, non-standard enough that it's parsed it here.
 * There is some repetition from other metas, but not enough to bother me.
 *
 * Some info: https://www.audiokinetic.com/en/library/edge/
 */
typedef enum { PCM, IMA, VORBIS, DSP, XMA2, XWMA, AAC, HEVAG, ATRAC9, OPUS } wwise_codec;
typedef struct {
    int big_endian;
    size_t file_size;
    int truncated;

    /* chunks references */
    off_t fmt_offset;
    size_t fmt_size;
    off_t data_offset;
    size_t data_size;

    /* standard fmt stuff */
    wwise_codec codec;
    int format;
    int channels;
    int sample_rate;
    int block_align;
    int average_bps;
    int bits_per_sample;
    size_t extra_size;

    int32_t num_samples;
    int loop_flag;
    int32_t loop_start_sample;
    int32_t loop_end_sample;
} wwise_header;


/* Wwise - Audiokinetic Wwise (Wave Works Interactive Sound Engine) middleware */
VGMSTREAM * init_vgmstream_wwise(STREAMFILE *streamFile) {
    VGMSTREAM * vgmstream = NULL;
    wwise_header ww = {0};
    off_t start_offset, first_offset = 0xc;
    int32_t (*read_32bit)(off_t,STREAMFILE*) = NULL;
    int16_t (*read_16bit)(off_t,STREAMFILE*) = NULL;

    /* basic checks */
    /* .wem (Wwise Encoded Media) is "newer Wwise", used after the 2011.2 SDK (~july)
     * .wav (ex. Shadowrun X360) and .ogg (ex. KOF XII X360), .xma (ex. Tron Evolution X360) are used in older Wwise */
    if (!check_extensions(streamFile,"wem,wav,lwav,ogg,logg,xma")) goto fail;

    if ((read_32bitBE(0x00,streamFile) != 0x52494646) &&    /* "RIFF" (LE) */
        (read_32bitBE(0x00,streamFile) != 0x52494658))      /* "RIFX" (BE) */
        goto fail;
    if ((read_32bitBE(0x08,streamFile) != 0x57415645) &&    /* "WAVE" */
        (read_32bitBE(0x08,streamFile) != 0x58574D41))      /* "XWMA" */
        goto fail;


    ww.big_endian = read_32bitBE(0x00,streamFile) == 0x52494658;/* RIFX */
    if (ww.big_endian) { /* Wwise honors machine's endianness (PC=RIFF, X360=RIFX --unlike XMA) */
        read_32bit = read_32bitBE;
        read_16bit = read_16bitBE;
    } else {
        read_32bit = read_32bitLE;
        read_16bit = read_16bitLE;
    }

    ww.file_size = streamFile->get_size(streamFile);

#if 0
    /* sometimes uses a RIFF size that doesn't count chunks/sizes, has LE size in RIFX, or is just wrong...? */
    if (4+4+read_32bit(0x04,streamFile) != ww.file_size) {
        VGM_LOG("WWISE: bad riff size (real=0x%x vs riff=0x%x)\n", 4+4+read_32bit(0x04,streamFile), ww.file_size);
        goto fail;
    }
#endif

    /* ignore LyN RIFF */
    {
        off_t fact_offset;
        size_t fact_size;

        if (find_chunk(streamFile, 0x66616374,first_offset,0, &fact_offset,&fact_size, 0, 0)) { /* "fact" */
            if (fact_size == 0x10 && read_32bitBE(fact_offset+0x04, streamFile) == 0x4C794E20) /* "LyN " */
                goto fail; /* parsed elsewhere */
            /* Wwise doesn't use "fact", though */
        }
    }


    /* parse format (roughly spec-compliant but some massaging is needed) */
    {
        off_t loop_offset;
        size_t loop_size;

        /* find basic chunks */
        if (!find_chunk(streamFile, 0x666d7420,first_offset,0, &ww.fmt_offset,&ww.fmt_size, ww.big_endian, 0)) goto fail; /*"fmt "*/
        if (!find_chunk(streamFile, 0x64617461,first_offset,0, &ww.data_offset,&ww.data_size, ww.big_endian, 0)) goto fail; /*"data"*/

        /* base fmt */
        if (ww.fmt_size < 0x12) goto fail;
        ww.format           = (uint16_t)read_16bit(ww.fmt_offset+0x00,streamFile);

        if (ww.format == 0x0165) { /* XMA2WAVEFORMAT (always "fmt"+"XMA2", unlike .xma that may only have "XMA2") */
            off_t xma2_offset;
            if (!find_chunk(streamFile, 0x584D4132,first_offset,0, &xma2_offset,NULL, ww.big_endian, 0)) goto fail;
            xma2_parse_xma2_chunk(streamFile, xma2_offset,&ww.channels,&ww.sample_rate, &ww.loop_flag, &ww.num_samples, &ww.loop_start_sample, &ww.loop_end_sample);
        } else { /* WAVEFORMATEX */
            ww.channels         = read_16bit(ww.fmt_offset+0x02,streamFile);
            ww.sample_rate      = read_32bit(ww.fmt_offset+0x04,streamFile);
            ww.average_bps      = read_32bit(ww.fmt_offset+0x08,streamFile);/* bytes per sec */
            ww.block_align      = (uint16_t)read_16bit(ww.fmt_offset+0x0c,streamFile);
            ww.bits_per_sample   = (uint16_t)read_16bit(ww.fmt_offset+0x0e,streamFile);
            if (ww.fmt_size > 0x10 && ww.format != 0x0165 && ww.format != 0x0166) /* ignore XMAWAVEFORMAT */
                ww.extra_size   = (uint16_t)read_16bit(ww.fmt_offset+0x10,streamFile);
            /* channel bitmask, see AkSpeakerConfig.h (ex. 1ch uses FRONT_CENTER 0x4, 2ch FRONT_LEFT 0x1 | FRONT_RIGHT 0x2, etc) */
            //if (ww.extra_size >= 6)
            //    ww.channel_config = read_32bit(ww.fmt_offset+0x14,streamFile);
        }

        /* find loop info */
        if (ww.format == 0x0166) { /* XMA2WAVEFORMATEX */
            xma2_parse_fmt_chunk_extra(streamFile, ww.fmt_offset, &ww.loop_flag, &ww.num_samples, &ww.loop_start_sample, &ww.loop_end_sample, ww.big_endian);
        }
        else if (find_chunk(streamFile, 0x736D706C,first_offset,0, &loop_offset,&loop_size, ww.big_endian, 0)) { /*"smpl". common */
            if (loop_size >= 0x34
                    && read_32bit(loop_offset+0x1c, streamFile)==1        /*loop count*/
                    && read_32bit(loop_offset+0x24+4, streamFile)==0) {
                ww.loop_flag = 1;
                ww.loop_start_sample = read_32bit(loop_offset+0x24+0x8, streamFile);
                ww.loop_end_sample   = read_32bit(loop_offset+0x24+0xc,streamFile);
                //todo fix repeat looping
            }
        }
        //else if (find_chunk(streamFile, 0x4C495354,first_offset,0, &loop_offset,&loop_size, ww.big_endian, 0)) { /*"LIST", common */
        //    /* usually contains "cue"s with sample positions for events (ex. Platinum Games) but no real looping info */
        //}

        /* other Wwise specific: */
        //"JUNK": optional padding for usually aligment (0-size JUNK exists too)
        //"akd ": seem to store extra info for Wwise editor (wave peaks/loudness/HDR envelope?)
    }

    /* format to codec */
    switch(ww.format) {
        case 0x0001: ww.codec = PCM; break; /* older Wwise */
        case 0x0002: ww.codec = IMA; break; /* newer Wwise (conflicts with MSADPCM, probably means "platform's ADPCM") */
        //case 0x0011: ww.codec = IMA; break; /* older Wwise (used?) */
        case 0x0069: ww.codec = IMA; break; /* older Wwise (Spiderman Web of Shadows X360, LotR Conquest PC) */
        case 0x0161: ww.codec = XWMA; break; /* WMAv2 */
        case 0x0162: ww.codec = XWMA; break; /* WMAPro */
        case 0x0165: ww.codec = XMA2; break; /* always with the "XMA2" chunk, Wwise doesn't use XMA1 */
        case 0x0166: ww.codec = XMA2; break;
        case 0x3039: ww.codec = OPUS; break;
        case 0xAAC0: ww.codec = AAC; break;
        case 0xFFF0: ww.codec = DSP; break;
        case 0xFFFB: ww.codec = HEVAG; break;
        case 0xFFFC: ww.codec = ATRAC9; break;
        case 0xFFFE: ww.codec = PCM; break; /* "PCM for Wwise Authoring" */
        case 0xFFFF: ww.codec = VORBIS; break;
        default:
            VGM_LOG("WWISE: unknown codec 0x%x \n", ww.format);
            goto fail;
    }

    /* fix for newer Wwise DSP with coefs: Epic Mickey 2 (Wii), Batman Arkham Origins Blackgate (3DS) */
    if (ww.format == 0x0002 && ww.extra_size == 0x0c + ww.channels * 0x2e) {
        ww.codec = DSP;
    }
    else if (ww.format == 0x0002 && ww.block_align == 0x104 * ww.channels) {
        //ww.codec = SWITCH_ADPCM;
        /* unknown codec, found in Bayonetta 2 (Switch)
         * frames of 0x104 per ch, possibly frame header is hist1(2)/hist2(2)/predictor(1)
         * (may write 2 header samples + FF*2 nibbles = 0x200 samples per block?) */
        goto fail;
    }


    /* Some Wwise files (ex. Oddworld PSV, Bayonetta 2 WiiU, often in BGM.bnk) are truncated mirrors of another file.
     * They come in RAM banks, probably to play the beginning while the rest of the real stream loads.
     * We'll add basic support to avoid complaints of this or that .wem not playing */
    if (ww.data_size > ww.file_size) {
        //VGM_LOG("WWISE: truncated data size (prefetch): (real=0x%x > riff=0x%x)\n", ww.data_size, ww.file_size);
        if (ww.codec == IMA || ww.codec == VORBIS) /* only seen those, probably others exist */
            ww.truncated = 1;
        else
            goto fail;
    }


    /* build the VGMSTREAM */
    vgmstream = allocate_vgmstream(ww.channels,ww.loop_flag);
    if (!vgmstream) goto fail;

    vgmstream->sample_rate = ww.sample_rate;
    vgmstream->loop_start_sample = ww.loop_start_sample;
    vgmstream->loop_end_sample = ww.loop_end_sample;
    vgmstream->meta_type = meta_WWISE_RIFF;

    start_offset = ww.data_offset;

    switch(ww.codec) {
        case PCM: /* common */
            /* normally riff.c has priority but it's needed when .wem is used */
            if (ww.fmt_size != 0x10 && ww.fmt_size != 0x18 && ww.fmt_size != 0x28) goto fail; /* old, new/Limbo (PC) */
            if (ww.bits_per_sample != 16) goto fail;

            vgmstream->coding_type = (ww.big_endian ? coding_PCM16BE : coding_PCM16LE);
            vgmstream->layout_type = ww.channels > 1 ? layout_interleave : layout_none;
            vgmstream->interleave_block_size = 0x02;

            vgmstream->num_samples = pcm_bytes_to_samples(ww.data_size, ww.channels, ww.bits_per_sample);
            break;

        case IMA: /* common */
            /* slightly modified XBOX-IMA */
            /* Wwise reuses common codec ids (ex. 0x0002 MSADPCM) for IMA so this parser should go AFTER riff.c avoid misdetection */

            if (ww.fmt_size != 0x28 && ww.fmt_size != 0x18) goto fail; /* old, new */
            if (ww.bits_per_sample != 4) goto fail;
            if (ww.block_align != 0x24 * ww.channels) goto fail;

            vgmstream->coding_type = coding_WWISE_IMA;
            vgmstream->layout_type = layout_interleave;
            vgmstream->interleave_block_size = ww.block_align / ww.channels;
            vgmstream->codec_endian = ww.big_endian;

            if (ww.truncated) /* enough to get real samples */
                ww.data_size = ww.file_size - ww.data_offset;

            vgmstream->num_samples = xbox_ima_bytes_to_samples(ww.data_size, ww.channels);
            break;

#ifdef VGM_USE_VORBIS
        case VORBIS: {  /* common */
            /* Wwise uses custom Vorbis, which changed over time (config must be detected to pass to the decoder). */
            off_t vorb_offset, data_offsets, block_offsets;
            size_t vorb_size, setup_offset, audio_offset;
            vorbis_custom_config cfg = {0};

            cfg.channels = ww.channels;
            cfg.sample_rate = ww.sample_rate;
            cfg.big_endian = ww.big_endian;

            if (ww.block_align != 0 || ww.bits_per_sample != 0) goto fail; /* always 0 for Worbis */

            /* autodetect format (field are mostly common, see the end of the file) */
            if (find_chunk(streamFile, 0x766F7262,first_offset,0, &vorb_offset,&vorb_size, ww.big_endian, 0)) { /*"vorb"*/
                /* older Wwise (~<2012) */

                switch(vorb_size) {
                    case 0x2C: /* earliest (~2009), ex. UFC Undisputed 2009 (PS3), some EVE Online Apocrypha files? */
                    case 0x28: /* early (~2009), ex. The Lord of the Rings: Conquest (PC) */
                        data_offsets = 0x18;
                        block_offsets = 0; /* no need, full headers are present */
                        cfg.header_type = WWV_TYPE_8;
                        cfg.packet_type = WWV_STANDARD;
                        cfg.setup_type = WWV_HEADER_TRIAD;
                        break;

                    //case 0x32:  /* ? */
                    case 0x34:  /* common (2010~2011) */
                        data_offsets = 0x18;
                        block_offsets = 0x30;
                        cfg.header_type = WWV_TYPE_6;
                        cfg.packet_type = WWV_STANDARD;
                        cfg.setup_type = WWV_EXTERNAL_CODEBOOKS; /* setup_type will be corrected later */
                        break;
                    case 0x2a:  /* uncommon (mid 2011), ex. infamous 2 PS3 */
                        data_offsets = 0x10;
                        block_offsets = 0x28;
                        cfg.header_type = WWV_TYPE_2;
                        cfg.packet_type = WWV_MODIFIED;
                        cfg.setup_type = WWV_EXTERNAL_CODEBOOKS;
                        break;
                    default:
                        VGM_LOG("WWISE: unknown vorb size 0x%x\n", vorb_size);
                        goto fail;
                }

                vgmstream->num_samples = read_32bit(vorb_offset + 0x00, streamFile);
                setup_offset    = read_32bit(vorb_offset + data_offsets + 0x00, streamFile); /* within data (0 = no seek table) */
                audio_offset    = read_32bit(vorb_offset + data_offsets + 0x04, streamFile); /* within data */
                if (block_offsets) {
                    cfg.blocksize_1_exp = read_8bit(vorb_offset + block_offsets + 0x00, streamFile); /* small */
                    cfg.blocksize_0_exp = read_8bit(vorb_offset + block_offsets + 0x01, streamFile); /* big */
                }
                ww.data_size -= audio_offset;

                /* detect setup type:
                 * - full inline: ~2009, ex. The King of Fighters XII X360, The Saboteur PC
                 * - trimmed inline: ~2010, ex. Army of Two: 40 days X360 (some multiplayer files)
                 * - external: ~2010, ex. Assassin's Creed Brotherhood X360, Dead Nation X360 */
                if (vorb_size == 0x34) {
                    size_t setup_size = (uint16_t)read_16bit(start_offset + setup_offset, streamFile);
                    uint32_t id = (uint32_t)read_32bitBE(start_offset + setup_offset + 0x06, streamFile);

                    /* if the setup after header starts with "(data)BCV" it's an inline codebook) */
                    if ((id & 0x00FFFFFF) == 0x00424356) { /* 0"BCV" */
                        cfg.setup_type = WWV_FULL_SETUP;
                    }
                    /* if the setup is suspiciously big it's probably trimmed inline codebooks */
                    else if (setup_size > 0x200) { /* an external setup it's ~0x100 max + some threshold */
                        cfg.setup_type = WWV_INLINE_CODEBOOKS;
                    }
                }

                vgmstream->codec_data = init_vorbis_custom(streamFile, start_offset + setup_offset, VORBIS_WWISE, &cfg);
                if (!vgmstream->codec_data) goto fail;
            }
            else {
                /* newer Wwise (>2012) */
                off_t extra_offset = ww.fmt_offset + 0x18; /* after flag + channels */
                int is_wem = check_extensions(streamFile,"wem");

                switch(ww.extra_size) {
                    case 0x30:
                        data_offsets = 0x10;
                        block_offsets = 0x28;
                        cfg.header_type = WWV_TYPE_2;
                        cfg.packet_type = WWV_MODIFIED;

                        /* setup not detectable by header, so we'll try both; hopefully libvorbis will reject wrong codebooks
                         * - standard: early (<2012), ex. The King of Fighters XIII X360 (2011/11), .ogg (cbs are from aoTuV, too)
                         * - aoTuV603: later (>2012), ex. Sonic & All-Stars Racing Transformed PC (2012/11), .wem */
                        cfg.setup_type  = is_wem ? WWV_AOTUV603_CODEBOOKS : WWV_EXTERNAL_CODEBOOKS; /* aoTuV came along .wem */
                        break;

                    //case 0x2a: /* Rocksmith 2011 X360? */
                        //non mod packets? TYPE_06? (possibly detectable by checking setup's granule, should be 0)
                    default:
                        VGM_LOG("WWISE: unknown extra size 0x%x\n", vorb_size);
                        goto fail;
                }

                vgmstream->num_samples = read_32bit(extra_offset + 0x00, streamFile);
                setup_offset = read_32bit(extra_offset + data_offsets + 0x00, streamFile); /* within data */
                audio_offset = read_32bit(extra_offset + data_offsets + 0x04, streamFile); /* within data */
                cfg.blocksize_1_exp = read_8bit(extra_offset + block_offsets + 0x00, streamFile); /* small */
                cfg.blocksize_0_exp = read_8bit(extra_offset + block_offsets + 0x01, streamFile); /* big */
                ww.data_size -= audio_offset;

                /* Normal packets are used rarely (ex. Oddworld New 'n' Tasty! PSV). They are hard to detect (decoding
                 * will mostly work with garbage results) but we'll try. Setup size and "fmt" bitrate fields may matter too. */
                if (ww.extra_size == 0x30) {
                    /* all blocksizes I've seen are 0x08+0x0B except Oddworld PSV, that uses 0x09+0x09
                     * (maybe lower spec machines = needs simpler packets) */
                    if (cfg.blocksize_0_exp == cfg.blocksize_1_exp)
                        cfg.packet_type = WWV_STANDARD;
                }

                /* try with the selected codebooks */
                vgmstream->codec_data = init_vorbis_custom(streamFile, start_offset + setup_offset, VORBIS_WWISE, &cfg);
                if (!vgmstream->codec_data) {
                    /* codebooks failed: try again with the other type */
                    cfg.setup_type  = is_wem ? WWV_EXTERNAL_CODEBOOKS : WWV_AOTUV603_CODEBOOKS;
                    vgmstream->codec_data = init_vorbis_custom(streamFile, start_offset + setup_offset, VORBIS_WWISE, &cfg);
                    if (!vgmstream->codec_data) goto fail;
                }
            }
            vgmstream->layout_type = layout_none;
            vgmstream->coding_type = coding_VORBIS_custom;
            vgmstream->codec_endian = ww.big_endian;

            start_offset += audio_offset;

            /* Vorbis is VBR so this is very approximate, meh */
            if (ww.truncated)
                vgmstream->num_samples = vgmstream->num_samples * (ww.file_size - start_offset) / ww.data_size;

            break;
        }
#endif

        case DSP: {     /* Wii/3DS/WiiU */
            off_t wiih_offset;
            size_t wiih_size;
            int i;

            //if (ww.fmt_size != 0x28 && ww.fmt_size != ?) goto fail; /* old, new */
            if (ww.bits_per_sample != 4) goto fail;

            vgmstream->coding_type = coding_NGC_DSP;
            vgmstream->layout_type = layout_interleave;
            vgmstream->interleave_block_size = 0x08; /* ww.block_align = 0x8 in older Wwise, samples per block in newer Wwise */

            /* find coef position */
            if (find_chunk(streamFile, 0x57696948,first_offset,0, &wiih_offset,&wiih_size, ww.big_endian, 0)) { /*"WiiH"*/ /* older Wwise */
                vgmstream->num_samples = dsp_bytes_to_samples(ww.data_size, ww.channels);
                if (wiih_size != 0x2e * ww.channels) goto fail;
            }
            else if (ww.extra_size == 0x0c + ww.channels * 0x2e) { /* newer Wwise */
                vgmstream->num_samples = read_32bit(ww.fmt_offset + 0x18, streamFile);
                wiih_offset = ww.fmt_offset + 0x1c;
                wiih_size = 0x2e * ww.channels;
            }
            else {
                goto fail;
            }

            /* get coefs and default history */
            dsp_read_coefs(vgmstream,streamFile,wiih_offset, 0x2e, ww.big_endian);
            for (i=0; i < ww.channels; i++) {
                vgmstream->ch[i].adpcm_history1_16 = read_16bitBE(wiih_offset + i * 0x2e + 0x24,streamFile);
                vgmstream->ch[i].adpcm_history2_16 = read_16bitBE(wiih_offset + i * 0x2e + 0x26,streamFile);
            }

            break;
        }

#ifdef VGM_USE_FFMPEG
        case XMA2: {    /* X360/XBone */
            uint8_t buf[0x100];
            int bytes;
            off_t xma2_offset;
            size_t xma2_size;

            /* endian check should be enough */
            //if (ww.fmt_size != ...) goto fail; /* XMA1 0x20, XMA2old: 0x34, XMA2new: 0x40, XMA2 Guitar Hero Live/padded: 0x64, etc */
            if (!ww.big_endian) goto fail; /* must be Wwise (real XMA are LE and parsed elsewhere) */

            if (find_chunk(streamFile, 0x584D4132,first_offset,0, &xma2_offset,&xma2_size, ww.big_endian, 0)) { /*"XMA2"*/ /* older Wwise */
                bytes = ffmpeg_make_riff_xma2_from_xma2_chunk(buf,0x100, xma2_offset, xma2_size, ww.data_size, streamFile);
            } else { /* newer Wwise */
                bytes = ffmpeg_make_riff_xma_from_fmt_chunk(buf,0x100, ww.fmt_offset, ww.fmt_size, ww.data_size, streamFile, ww.big_endian);
            }

            vgmstream->codec_data = init_ffmpeg_header_offset(streamFile, buf,bytes, ww.data_offset,ww.data_size);
            if ( !vgmstream->codec_data ) goto fail;
            vgmstream->coding_type = coding_FFmpeg;
            vgmstream->layout_type = layout_none;

            vgmstream->num_samples = ww.num_samples; /* set while parsing XMAWAVEFORMATs */

            /* "XMAc": rare Wwise extension, XMA2 physical loop regions (loop_start_b, loop_end_b, loop_subframe_data)
             * Can appear even in the file doesn't loop, maybe it's meant to be the playable physical region */
            //VGM_ASSERT(find_chunk(streamFile, 0x584D4163,first_offset,0, NULL,NULL, ww.big_endian, 0), "WWISE: XMAc chunk found\n");
            /* other chunks: "seek", regular XMA2 seek table */

            break;
        }

        case XWMA: {    /* X360 */
            ffmpeg_codec_data *ffmpeg_data = NULL;
            uint8_t buf[0x100];
            int bytes;

            if (ww.fmt_size != 0x18) goto fail;
            if (!ww.big_endian) goto fail; /* must be from Wwise X360 (PC LE XWMA is parsed elsewhere) */

            bytes = ffmpeg_make_riff_xwma(buf,0x100, ww.format, ww.data_size, vgmstream->channels, vgmstream->sample_rate, ww.average_bps, ww.block_align);
            ffmpeg_data = init_ffmpeg_header_offset(streamFile, buf,bytes, ww.data_offset,ww.data_size);
            if ( !ffmpeg_data ) goto fail;
            vgmstream->codec_data = ffmpeg_data;
            vgmstream->coding_type = coding_FFmpeg;
            vgmstream->layout_type = layout_none;


            /* manually find total samples, why don't they put this in the header is beyond me */
            {
                ms_sample_data msd = {0};

                msd.channels = ww.channels;
                msd.data_offset = ww.data_offset;
                msd.data_size = ww.data_size;

                if (ww.format == 0x0162)
                    wmapro_get_samples(&msd, streamFile, ww.block_align, ww.sample_rate,0x00E0);
                else
                    wma_get_samples(&msd, streamFile, ww.block_align, ww.sample_rate,0x001F);

                vgmstream->num_samples = msd.num_samples;
                if (!vgmstream->num_samples)
                    vgmstream->num_samples = (int32_t)ffmpeg_data->totalSamples; /* very wrong, from avg-br */
                //num_samples seem to be found in the last "seek" table entry too, as: entry / channels / 2
            }

            break;
        }

        case AAC: {     /* iOS/Mac */
            ffmpeg_codec_data * ffmpeg_data = NULL;

            if (ww.fmt_size != 0x24) goto fail;
            if (ww.block_align != 0 || ww.bits_per_sample != 0) goto fail;

            /* extra: size 0x12, unknown values */

            ffmpeg_data = init_ffmpeg_offset(streamFile, ww.data_offset,ww.data_size);
            if (!ffmpeg_data) goto fail;
            vgmstream->codec_data = ffmpeg_data;
            vgmstream->coding_type = coding_FFmpeg;
            vgmstream->layout_type = layout_none;

            vgmstream->num_samples = (int32_t)ffmpeg_data->totalSamples;
            break;
        }

        case OPUS: {    /* Switch */
            uint8_t buf[0x100];
            size_t bytes, skip;
            ffmpeg_custom_config cfg = {0};

            /* values up to 0x14 seem fixed and similar to HEVAG's (block_align 0x02/04, bits_per_sample 0x10) */
            if (ww.fmt_size == 0x28) {
                size_t seek_size;

                vgmstream->num_samples += read_32bit(ww.fmt_offset + 0x18, streamFile);
                /* 0x1c: null? 0x20: data_size without seek_size */
                seek_size = read_32bit(ww.fmt_offset + 0x24, streamFile);

                start_offset += seek_size;
                ww.data_size -= seek_size;
            }
            else {
                goto fail;
            }

            skip = 0; /* Wwise doesn't seem to use it? (0x138 /0x3E8 ~default) */

            cfg.type = FFMPEG_SWITCH_OPUS;
            //cfg.big_endian = ww.big_endian; /* internally BE */

            bytes = ffmpeg_make_opus_header(buf,0x100, ww.channels, skip, ww.sample_rate);
            vgmstream->codec_data = init_ffmpeg_config(streamFile, buf,bytes, start_offset,ww.data_size, &cfg);
            if (!vgmstream->codec_data) goto fail;

            vgmstream->coding_type = coding_FFmpeg;
            vgmstream->layout_type = layout_none;
            break;
        }
#endif
        case HEVAG:     /* PSV */
            /* changed values, another bizarre Wwise quirk */
            //ww.block_align /* unknown (1ch=2, 2ch=4) */
            //ww.bits_per_sample; /* unknown (0x10) */
            //if (ww.bits_per_sample != 4) goto fail;

            if (ww.fmt_size != 0x18) goto fail;
            if (ww.big_endian) goto fail;

            /* extra_data: size 0x06, @0x00: samples per block (0x1c), @0x04: channel config */

            vgmstream->coding_type = coding_HEVAG;
            vgmstream->layout_type = layout_interleave;
            vgmstream->interleave_block_size = 0x10;

            vgmstream->num_samples = ps_bytes_to_samples(ww.data_size, ww.channels);
            break;

#ifdef VGM_USE_ATRAC9
        case ATRAC9: {  /* PSV/PS4 */
            atrac9_config cfg = {0};

            if (ww.fmt_size != 0x24) goto fail;
            if (ww.extra_size != 0x12) goto fail;

            cfg.channels = vgmstream->channels;
            cfg.config_data = read_32bitBE(ww.fmt_offset+0x18,streamFile);
            cfg.encoder_delay = read_32bit(ww.fmt_offset+0x20,streamFile);

            vgmstream->codec_data = init_atrac9(&cfg);
            if (!vgmstream->codec_data) goto fail;
            vgmstream->coding_type = coding_ATRAC9;
            vgmstream->layout_type = layout_none;

            vgmstream->num_samples = read_32bit(ww.fmt_offset+0x1c,streamFile);
            break;
        }
#endif

        default:
            goto fail;
    }


    if ( !vgmstream_open_stream(vgmstream,streamFile,start_offset) )
        goto fail;
    return vgmstream;

fail:
    close_vgmstream(vgmstream);
    return NULL;
}



/* VORBIS FORMAT RESEARCH */
/*
- old format
"fmt" size 0x28, extra size 0x16 / size 0x18, extra size 0x06
0x12 (2): flag? (00,10,18): not related to seek table, codebook type, chunk count, looping
0x14 (4): channel config
0x18-24 (16): ? (fixed: 0x01000000 00001000 800000AA 00389B71)  [removed when extra size is 0x06]

"vorb" size 0x34
0x00 (4): num_samples
0x04 (4): skip samples?
0x08 (4): ? (small if loop, 0 otherwise)
0x0c (4): data start offset after seek table+setup, or loop start when "smpl" is present
0x10 (4): ? (small, 0..~0x400)
0x14 (4): approximate data size without seek table? (almost setup+packets)
0x18 (4): setup_offset within data (0 = no seek table)
0x1c (4): audio_offset within data
0x20 (2): biggest packet size (not including header)?
0x22 (2): ? (small, N..~0x100) uLastGranuleExtra?
0x24 (4): ? (mid, 0~0x5000) dwDecodeAllocSize?
0x28 (4): ? (mid, 0~0x5000) dwDecodeX64AllocSize?
0x2c (4): parent bank/event id? uHashCodebook? (shared by several .wem a game, but not all need to share it)
0x30 (1): blocksize_1_exp (small)
0x31 (1): blocksize_0_exp (large)
0x32 (2): empty

"vorb" size 0x28 / 0x2c / 0x2a
0x00 (4): num_samples
0x04 (4): data start offset after seek table+setup, or loop start when "smpl" is present
0x08 (4): data end offset after seek table (setup+packets), or loop end when "smpl" is present
0x0c (2): ? (small, 0..~0x400) [(4) when size is 0x2C]
0x10 (4): setup_offset within data (0 = no seek table)
0x14 (4): audio_offset within data
0x18 (2): biggest packet size (not including header)?
0x1a (2): ? (small, N..~0x100) uLastGranuleExtra? [(4) when size is 0x2C]
0x1c (4): ? (mid, 0~0x5000) dwDecodeAllocSize?
0x20 (4): ? (mid, 0~0x5000) dwDecodeX64AllocSize?
0x24 (4): parent bank/event id? uHashCodebook? (shared by several .wem a game, but not all need to share it)
0x28 (1): blocksize_1_exp (small) [removed when size is 0x28]
0x29 (1): blocksize_0_exp (large) [removed when size is 0x28]

- new format:
"fmt" size 0x42, extra size 0x30
0x12 (2): flag? (00,10,18): not related to seek table, codebook type, chunk count, looping, etc
0x14 (4): channel config
0x18 (4): num_samples
0x1c (4): data start offset after seek table+setup, or loop start when "smpl" is present
0x20 (4): data end offset after seek table (setup+packets), or loop end when "smpl" is present
0x24 (2): ?1 (small, 0..~0x400)
0x26 (2): ?2 (small, N..~0x100): not related to seek table, codebook type, chunk count, looping, packet size, samples, etc
0x28 (4): setup offset within data (0 = no seek table)
0x2c (4): audio offset within data
0x30 (2): biggest packet size (not including header)
0x32 (2): (small, 0..~0x100) uLastGranuleExtra?
0x34 (4): ? (mid, 0~0x5000) dwDecodeAllocSize?
0x38 (4): ? (mid, 0~0x5000) dwDecodeX64AllocSize?
0x40 (1): blocksize_1_exp (small)
0x41 (1): blocksize_0_exp (large)

Wwise encoder options, unknown fields above may be reflect these:
 https://www.audiokinetic.com/library/edge/?source=Help&id=vorbis_encoder_parameters
*/
