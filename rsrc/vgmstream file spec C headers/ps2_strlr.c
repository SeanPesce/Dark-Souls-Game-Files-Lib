#include "meta.h"
#include "../layout/layout.h"
#include "../coding/coding.h"

/* STR - The Bouncer (PS2) */
VGMSTREAM * init_vgmstream_ps2_strlr(STREAMFILE *streamFile) {
    VGMSTREAM * vgmstream = NULL;
    int channel_count, loop_flag;
    off_t start_offset;


    /* checks */
    /* .vs: real extension (from .nam container) , .str: partial header id */
    if (!check_extensions(streamFile, "vs,str"))
        goto fail;

    /* check header */
    if (!(read_32bitBE(0x000,streamFile) == 0x5354524C &&   /* "STRL" */
          read_32bitBE(0x800,streamFile) == 0x53545252) &&  /* "STRR" */
        read_32bitBE(0x00,streamFile) != 0x5354524D)        /* "STRM" */
        goto fail;


    loop_flag = 0;
    channel_count = (read_32bitBE(0x00,streamFile) == 0x5354524D) ? 1 : 2; /* "STRM"=mono (voices) */
    start_offset = 0x00;

    /* build the VGMSTREAM */
    vgmstream = allocate_vgmstream(channel_count,loop_flag);
    if (!vgmstream) goto fail;

    vgmstream->sample_rate = 44100;
    vgmstream->coding_type = coding_PSX;

    vgmstream->layout_type = layout_blocked_ps2_strlr;
    vgmstream->meta_type = meta_PS2_STRLR;

    if (!vgmstream_open_stream(vgmstream,streamFile,start_offset))
        goto fail;

    /* calc num_samples */
    {
        vgmstream->next_block_offset = start_offset;
        do {
            block_update_ps2_strlr(vgmstream->next_block_offset,vgmstream);
            vgmstream->num_samples += ps_bytes_to_samples(vgmstream->current_block_size, 1);
        }
        while (vgmstream->next_block_offset < get_streamfile_size(streamFile));
    }

    block_update_ps2_strlr(start_offset, vgmstream);
    return vgmstream;

fail:
    close_vgmstream(vgmstream);
    return NULL;
}
