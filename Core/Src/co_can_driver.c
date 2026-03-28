#include "rcan.h"
#include "data.h"
#include "string.h"
#include "stdio.h"

static rcan can;

int canOpen(CAN_PORT port, uint32_t bitrate, CO_Data *d)
{
    if (port == 0 || d == NULL)
        return 1;
    return rcan_start(&can, (uint32_t)port, bitrate) ? 0 : 1;
}

void can_loop(CAN_PORT port, uint32_t bitrate, CO_Data *d)
{
    Message rxm = {0};
    rcan_frame frame = {0};
    if (!rcan_is_ok(&can))
    {
        printf("CAN bus error\r\n");
    }

    if (rcan_receive(&can, &frame))
    {
        rxm.cob_id = frame.id;
        rxm.rtr = frame.rtr;
        rxm.len = frame.len;
        memcpy(rxm.data, frame.payload, frame.len);
        canDispatch(d, &rxm);
    }
}

int canSend(CAN_PORT fd0, Message const *m)
{
    if (fd0 == 0 || m == NULL)
        return 1;

    rcan_frame frame = {0};
    frame.id = m->cob_id;
    frame.type = std_id;
    frame.len = m->len;
    frame.rtr = m->rtr;
    memcpy(frame.payload, m->data, m->len);

    if (rcan_send(&can, &frame) != true)
    {
        return 1;
    }
    return 0;
}

int canClose(CO_Data *d)
{
    if (d == NULL)
        return 1;
    return rcan_stop(&can) ? 0 : 1;
}
