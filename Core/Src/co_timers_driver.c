#include "rtimer.h"
#include "timers_driver.h"
#include "stdio.h"

static rtimer timer;

void TimerInit(void)
{
    if (!rtimer_create(&timer))
    {
        printf("timer create failed\r\n");
    }
}

void TimerCleanup(void)
{
    if (!rtimer_delete(&timer))
    {
        printf("timer delete failed\r\n");
    }
}

void setTimer(TIMEVAL value)
{
    if (!rtimer_setup(&timer, value, TimeDispatch))
    {
        printf("timer setup failed\r\n");
    }
}

TIMEVAL getElapsedTime(void)
{
    return rtimer_get_elapsed_time(&timer);
}
