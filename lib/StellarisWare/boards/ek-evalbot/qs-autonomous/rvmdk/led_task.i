#line 1 "led_task.c"
























#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 26 "led_task.c"
#line 1 "..\\drivers/io.h"



















































typedef enum
{
    
    
    
    BOTH_LEDS = 0,

    
    
    
    LED_1,

    
    
    
    LED_2
}
tLED;






typedef enum
{
    
    
    
    BUTTON_1 = 0,

    
    
    
    BUTTON_2
}
tButton;













extern void LEDsInit(void);
extern void LED_Off(tLED eLED);
extern void LED_On(tLED eLED);
extern void LED_Toggle(tLED eLED);
extern void PushButtonsInit(void);
extern tBoolean PushButtonGetStatus(tButton eButton);
extern void PushButtonDebouncer(void);
extern tBoolean PushButtonGetDebounced(tButton eButton);










#line 27 "led_task.c"
#line 1 "..\\..\\..\\utils/scheduler.h"

















































typedef void (*tSchedulerFunction)(void *pvParam);







typedef struct
{
    
    
    
    
    void (*pfnFunction)(void *);

    
    
    
    void *pvParam;

    
    
    
    
    
    unsigned long ulFrequencyTicks;

    
    
    
    
    unsigned long ulLastCall;

    
    
    
    
    
    tBoolean bActive;
}
tSchedulerTask;







extern tSchedulerTask g_psSchedulerTable[];







extern unsigned long g_ulSchedulerNumTasks;













extern void SchedulerSysTickIntHandler(void);
extern void SchedulerInit(unsigned long ulTicksPerSecond);
extern void SchedulerRun(void);
extern void SchedulerTaskEnable(unsigned long ulIndex, tBoolean bRunNow);
extern void SchedulerTaskDisable(unsigned long ulIndex);
extern unsigned long SchedulerTickCountGet(void);
extern unsigned long SchedulerElapsedTicksGet(unsigned long ulTickCount);
extern unsigned long SchedulerElapsedTicksCalc(unsigned long ulTickStart,
                                               unsigned long ulTickEnd);










#line 28 "led_task.c"








void
LEDTask(void *pvParam)
{
    
    
    
    LED_Toggle(BOTH_LEDS);
}







void
LEDTaskInit(void *pvParam)
{
    
    
    
    
    LEDsInit();
    LED_On(LED_1);
}
