#line 1 "auto_task.c"
























#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 26 "auto_task.c"
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










#line 27 "auto_task.c"
#line 1 "..\\drivers/motor.h"


















































typedef enum
{
    
    
    
    FORWARD = 0,

    
    
    
    REVERSE
}
tDirection;






typedef enum
{
    
    
    
    LEFT_SIDE = 0,

    
    
    
    RIGHT_SIDE
} tSide;













extern void MotorsInit(void);
extern void MotorDir(tSide ucMotor, tDirection eDirection);
extern void MotorRun(tSide ucMotor);
extern void MotorStop(tSide ucMotor);
extern void MotorSpeed(tSide ucMotor, unsigned short usPercent);










#line 28 "auto_task.c"
#line 1 "..\\drivers/sensors.h"


















































typedef enum
{
    
    
    
    BUMP_LEFT = 0,

    
    
    
    BUMP_RIGHT
}
tBumper;






typedef enum
{
    
    
    
    WHEEL_LEFT = 0,

    
    
    
    WHEEL_RIGHT
}
tWheel;













extern void BumpSensorsInit (void);
extern tBoolean BumpSensorGetStatus(tBumper eBumper);
extern void BumpSensorDebouncer(void);
extern tBoolean BumpSensorGetDebounced(tBumper eBumper);
extern void WheelSensorsInit(void (*pfnCallback)(tWheel eWheel));
extern void WheelSensorEnable(void);
extern void WheelSensorDisable(void);
extern void WheelSensorIntEnable(tWheel eWheel);
extern void WheelSensorIntDisable(tWheel eWheel);










#line 29 "auto_task.c"
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










#line 30 "auto_task.c"
#line 1 "..\\..\\..\\utils/uartstdio.h"












































#line 53 "..\\..\\..\\utils/uartstdio.h"






extern void UARTStdioInit(unsigned long ulPort);
extern void UARTStdioInitExpClk(unsigned long ulPort, unsigned long ulBaud);
extern int UARTgets(char *pcBuf, unsigned long ulLen);
extern unsigned char UARTgetc(void);
extern void UARTprintf(const char *pcString, ...);
extern int UARTwrite(const char *pcBuf, unsigned long ulLen);

extern int UARTPeek(unsigned char ucChar);
extern void UARTFlushTx(tBoolean bDiscard);
extern void UARTFlushRx(void);
extern int UARTRxBytesAvail(void);
extern int UARTTxBytesFree(void);
extern void UARTEchoSet(tBoolean bEnable);











#line 31 "auto_task.c"
#line 1 "drive_task.h"





























































extern void DriveTask(void *pvParam);
extern void DriveStop(void);
extern void DriveRun(unsigned long ulDirection, unsigned long ulSpeed);
extern void DriveInit(void);
extern long DriveSpeedGet(unsigned long ulMotor);










#line 32 "auto_task.c"
#line 1 "random.h"










































extern void RandomAddEntropy(unsigned long ulEntropy);
extern void RandomSeed(void);
extern unsigned long RandomNumber(void);










#line 33 "auto_task.c"
#line 1 "sound_task.h"











































extern void SoundTaskInit(void);
extern void SoundTask(void *pvParam);
extern void SoundTaskPlay(const unsigned char *pucSound);










#line 34 "auto_task.c"
#line 1 "sounds.h"










































extern const unsigned char g_pcBumpSound[];
extern const unsigned char g_pcReverseSound[];
extern const unsigned char g_pcHornSound[];










#line 35 "auto_task.c"
































typedef enum
{
    EVALBOT_STATE_IDLE,
    EVALBOT_STATE_DRIVING,
    EVALBOT_STATE_TURNING,
} tEvalbotState;








void
AutoTask(void *pvParam)
{
    static tEvalbotState sState = EVALBOT_STATE_IDLE;
    static unsigned long ulLastTicks = 0;
    static unsigned long ulDurationTicks = 0;

    
    
    
    switch(sState)
    {
        
        
        
        
        case EVALBOT_STATE_IDLE:
        {
            
            
            
            if(!PushButtonGetStatus(BUTTON_1))
            {
                
                
                
                
                RandomAddEntropy(SchedulerTickCountGet());
                RandomSeed();

                
                
                
                
                ulLastTicks = SchedulerTickCountGet();

                
                
                
                ulDurationTicks = (RandomNumber() % 1300) +
                                  700;

                
                
                
                
                DriveRun(3, 40);
                sState = EVALBOT_STATE_DRIVING;
                UARTprintf("button 1 - driving for %u\n", ulDurationTicks);
            }
            break;
        }

        
        
        
        
        
        
        case EVALBOT_STATE_DRIVING:
        {
            
            
            
            if(!BumpSensorGetStatus(LEFT_SIDE))
            {
                
                
                
                SoundTaskPlay(g_pcBumpSound);

                
                
                
                RandomAddEntropy(SchedulerTickCountGet());
                RandomSeed();

                
                
                
                ulLastTicks = SchedulerTickCountGet();
                ulDurationTicks = (RandomNumber() % 200) +
                                  200;

                
                
                
                
                DriveRun(1, 25);
                sState = EVALBOT_STATE_TURNING;
                UARTprintf("left sensor - turn right for %u\n", ulDurationTicks);
            }

            
            
            
            else if(!BumpSensorGetStatus(RIGHT_SIDE))
            {
                
                
                
                SoundTaskPlay(g_pcBumpSound);

                
                
                
                RandomAddEntropy(SchedulerTickCountGet());
                RandomSeed();

                
                
                
                ulLastTicks = SchedulerTickCountGet();
                ulDurationTicks = (RandomNumber() % 200) +
                                  200;

                
                
                
                
                DriveRun(0, 25);
                sState = EVALBOT_STATE_TURNING;
                UARTprintf("right sensor - turn left for %u\n", ulDurationTicks);
            }

            
            
            
            else if(!PushButtonGetStatus(BUTTON_2))
            {
                
                
                
                RandomAddEntropy(SchedulerTickCountGet());
                RandomSeed();

                
                
                
                DriveRun(3, 0);
                DriveStop();

                
                
                
                sState = EVALBOT_STATE_IDLE;
                UARTprintf("button 2 - stopping\n");
            }

            
            
            
            
            else if(SchedulerElapsedTicksGet(ulLastTicks) > ulDurationTicks)
            {
                
                
                
                ulLastTicks = SchedulerTickCountGet();
                ulDurationTicks = (RandomNumber() % 200) +
                                  200;

                
                
                
                
                DriveRun((RandomNumber() & 1) ?
                              0 : 1,
                              25);

                
                
                
                sState = EVALBOT_STATE_TURNING;
                UARTprintf("random turn - turn for %u\n", ulDurationTicks);
            }

            
            
            
            break;
        }

        
        
        
        
        
        case EVALBOT_STATE_TURNING:
        {
            if(SchedulerElapsedTicksGet(ulLastTicks) > ulDurationTicks)
            {
                
                
                
                ulLastTicks = SchedulerTickCountGet();
                ulDurationTicks = (RandomNumber() % 1300) +
                                  700;

                
                
                
                
                DriveRun(3, 40);
                sState = EVALBOT_STATE_DRIVING;
                UARTprintf("done turning, forward for %u\n", ulDurationTicks);
            }

            
            
            
            break;
        }
    }
}







void
AutoTaskInit(void *pvParam)
{
    PushButtonsInit();
    BumpSensorsInit();
}
