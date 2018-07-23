#include "meta.h"


/* .pos - loop points for .wav [Ys I Complete (PC); reused for manual looping] */
VGMSTREAM * init_vgmstream_pos(STREAMFILE *streamFile) {
    VGMSTREAM * vgmstream = NULL;
    STREAMFILE * streamData = NULL;
    int32_t loop_start, loop_end;


    /* checks */
    if (!check_extensions(streamFile,"pos"))
        goto fail;
    if (get_streamfile_size(streamFile) != 0x08)
        goto fail;

    streamData = open_streamfile_by_ext(streamFile, "wav");
    if (!streamData) goto fail;

    /* let the real initer do the parsing */
    vgmstream = init_vgmstream_riff(streamData);
    if (!vgmstream) goto fail;

    close_streamfile(streamData);
    streamData = NULL;

    /* install loops (wrong values are validated later) */
    loop_start = read_32bitLE(0x00,streamFile);
    loop_end = read_32bitLE(0x04,streamFile);
    vgmstream_force_loop(vgmstream, 1, loop_start, loop_end);

    vgmstream->meta_type = meta_RIFF_WAVE_POS;

    return vgmstream;

fail:
    close_streamfile(streamData);
    close_vgmstream(vgmstream);
    return NULL;
}
