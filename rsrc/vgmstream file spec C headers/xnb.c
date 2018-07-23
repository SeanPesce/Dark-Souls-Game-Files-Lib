#include "meta.h"
#include "../coding/coding.h"

/* XNB - Microsoft XNA Game Studio 4.0 format */
VGMSTREAM * init_vgmstream_xnb(STREAMFILE *streamFile) {
    VGMSTREAM * vgmstream = NULL;
    off_t start_offset;
    int loop_flag = 0, channel_count, num_samples = 0, loop_start = 0, loop_end = 0;
    int big_endian, flags, codec, sample_rate, block_size, bps;
    size_t data_size;
    char platform;


    /* check extension, case insensitive */
    if ( !check_extensions(streamFile,"xnb"))
        goto fail;

    /* check header */
    if ((read_32bitBE(0,streamFile) & 0xFFFFFF00) != 0x584E4200) /* "XNB" */
        goto fail;

    /* XNA Studio platforms: 'w' = Windows, 'm' = Windows Phone 7, 'x' = X360
     * MonoGame extensions: 'i' = iOS, 'a' = Android, 'X' = MacOSX, 'P': PS4, etc */
    platform = read_8bit(0x03,streamFile);
    big_endian = (platform == 'x');

    if (read_8bit(0x04,streamFile) != 0x05)  /* XNA 4.0 version only */
        goto fail;

    flags = read_8bit(0x05,streamFile);
  //if (flags & 0x01) goto fail; /* "HiDef profile" content (no actual difference) */
    if (flags & 0x80) goto fail; /* compressed with LZX/XMemCompress (at 0x0a is decompressed size) */
    if (flags & 0x40) goto fail; /* compressed with LZ4, MonoGame extension [ex. Square Heroes (PS4)] */

    /* full size */
    if (read_32bitLE(0x06,streamFile) != get_streamfile_size(streamFile))
        goto fail;


    /* XNB contains "type reader" class references to parse "shared resource" data (can be any implemented filetype) */
    {
        char reader_name[255+1];
        off_t current_offset = 0x0a;
        size_t reader_string_len;
        uint32_t fmt_chunk_size;
        const char * type_sound =  "Microsoft.Xna.Framework.Content.SoundEffectReader"; /* partial "fmt" chunk or XMA */
        //const char * type_song =  "Microsoft.Xna.Framework.Content.SongReader"; /* just references a companion .wma */

        /* type reader count, accept only one for now */
        if (read_8bit(current_offset++, streamFile) != 1)
            goto fail;

        reader_string_len = read_8bit(current_offset++, streamFile); /* doesn't count null */
        if (reader_string_len > 255) goto fail;

        /* check SoundEffect type string */
        if (read_string(reader_name,reader_string_len+1,current_offset,streamFile) != reader_string_len)
            goto fail;
        if ( strcmp(reader_name, type_sound) != 0 )
            goto fail;
        current_offset += reader_string_len + 1;
        current_offset += 4; /* reader version */

        /* shared resource count */
        if (read_8bit(current_offset++, streamFile) != 1)
            goto fail;

        /* shared resource: partial "fmt" chunk */
        fmt_chunk_size = read_32bitLE(current_offset, streamFile);
        current_offset += 4;

        {
            int32_t (*read_32bit)(off_t,STREAMFILE*) = big_endian ? read_32bitBE : read_32bitLE;
            int16_t (*read_16bit)(off_t,STREAMFILE*) = big_endian ? read_16bitBE : read_16bitLE;

            codec         = read_16bit(current_offset+0x00, streamFile);
            channel_count = read_16bit(current_offset+0x02, streamFile);
            sample_rate   = read_32bit(current_offset+0x04, streamFile);
            /* 0x08: byte rate */
            block_size    = read_16bit(current_offset+0x0c, streamFile);
            bps           = read_16bit(current_offset+0x0e, streamFile);

            if (codec == 0x166) {
                xma2_parse_fmt_chunk_extra(streamFile, current_offset, &loop_flag, &num_samples, &loop_start, &loop_end, big_endian);
            }
        }

        current_offset += fmt_chunk_size;

        data_size = read_32bitLE(current_offset, streamFile);
        current_offset += 4;

        start_offset = current_offset;
    }


    /* build the VGMSTREAM */
    vgmstream = allocate_vgmstream(channel_count,loop_flag);
    if (!vgmstream) goto fail;

    vgmstream->sample_rate = sample_rate;
    vgmstream->meta_type = meta_XNB;

    switch (codec) {
        case 0x01: /* Dragon's Blade (Android) */
            /* null in Metagalactic Blitz (PC) */
            if (!block_size)
                block_size = (bps == 8 ? 0x01 : 0x02) * channel_count;

            vgmstream->coding_type = bps == 8 ? coding_PCM8_U_int : coding_PCM16LE;
            vgmstream->layout_type = layout_interleave;
            vgmstream->interleave_block_size = block_size / channel_count;
            vgmstream->num_samples = pcm_bytes_to_samples(data_size, channel_count, bps);
            break;

        case 0x02: /* White Noise Online (PC) */
            if (!block_size) goto fail;
            vgmstream->coding_type = coding_MSADPCM;
            vgmstream->layout_type = layout_none;
            vgmstream->interleave_block_size = block_size;
            vgmstream->num_samples = msadpcm_bytes_to_samples(data_size, block_size, channel_count);
            break;

        case 0x11:
            if (!block_size) goto fail;
            vgmstream->coding_type = coding_MS_IMA;
            vgmstream->layout_type = layout_none;
            vgmstream->interleave_block_size = block_size;
            vgmstream->num_samples = ms_ima_bytes_to_samples(data_size, block_size, channel_count);
            break;

#ifdef VGM_USE_FFMPEG
        case 0x166: { /* Terraria (X360) */
            uint8_t buf[0x100];
            int32_t bytes, block_size, block_count;

            block_size = 0x10000; /* guessed */
            block_count = data_size / block_size + (data_size % block_size ? 1 : 0);

            bytes = ffmpeg_make_riff_xma2(buf,0x100, num_samples, data_size, vgmstream->channels, vgmstream->sample_rate, block_count, block_size);
            if (bytes <= 0) goto fail;

            vgmstream->codec_data = init_ffmpeg_header_offset(streamFile, buf,bytes, start_offset,data_size);
            if (!vgmstream->codec_data) goto fail;
            vgmstream->coding_type = coding_FFmpeg;
            vgmstream->layout_type = layout_none;

            vgmstream->num_samples = num_samples;
            vgmstream->loop_start_sample = loop_start;
            vgmstream->loop_end_sample = loop_end;
            break;
        }
#endif

        default:
            VGM_LOG("XNB: unknown codec 0x%x\n", codec);
            goto fail;
    }

    if ( !vgmstream_open_stream(vgmstream,streamFile,start_offset) )
        goto fail;
    return vgmstream;

fail:
    close_vgmstream(vgmstream);
    return NULL;
}
