#line 1 "..\\..\\..\\utils\\scheduler.c"























#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 25 "..\\..\\..\\utils\\scheduler.c"
#line 1 "..\\..\\..\\inc/hw_ints.h"















































#line 57 "..\\..\\..\\inc/hw_ints.h"






#line 174 "..\\..\\..\\inc/hw_ints.h"




























#line 214 "..\\..\\..\\inc/hw_ints.h"



#line 26 "..\\..\\..\\utils\\scheduler.c"
#line 1 "..\\..\\..\\driverlib/systick.h"


























































extern void SysTickEnable(void);
extern void SysTickDisable(void);
extern void SysTickIntRegister(void (*pfnHandler)(void));
extern void SysTickIntUnregister(void);
extern void SysTickIntEnable(void);
extern void SysTickIntDisable(void);
extern void SysTickPeriodSet(unsigned long ulPeriod);
extern unsigned long SysTickPeriodGet(void);
extern unsigned long SysTickValueGet(void);










#line 27 "..\\..\\..\\utils\\scheduler.c"
#line 1 "..\\..\\..\\driverlib/sysctl.h"






























































#line 195 "..\\..\\..\\driverlib/sysctl.h"







#line 235 "..\\..\\..\\driverlib/sysctl.h"







#line 253 "..\\..\\..\\driverlib/sysctl.h"
















#line 278 "..\\..\\..\\driverlib/sysctl.h"







#line 292 "..\\..\\..\\driverlib/sysctl.h"

















#line 316 "..\\..\\..\\driverlib/sysctl.h"



















#line 498 "..\\..\\..\\driverlib/sysctl.h"







#line 574 "..\\..\\..\\driverlib/sysctl.h"



























extern unsigned long SysCtlSRAMSizeGet(void);
extern unsigned long SysCtlFlashSizeGet(void);
extern tBoolean SysCtlPinPresent(unsigned long ulPin);
extern tBoolean SysCtlPeripheralPresent(unsigned long ulPeripheral);
extern tBoolean SysCtlPeripheralReady(unsigned long ulPeripheral);
extern void SysCtlPeripheralPowerOn(unsigned long ulPeripheral);
extern void SysCtlPeripheralPowerOff(unsigned long ulPeripheral);
extern void SysCtlPeripheralReset(unsigned long ulPeripheral);
extern void SysCtlPeripheralEnable(unsigned long ulPeripheral);
extern void SysCtlPeripheralDisable(unsigned long ulPeripheral);
extern void SysCtlPeripheralSleepEnable(unsigned long ulPeripheral);
extern void SysCtlPeripheralSleepDisable(unsigned long ulPeripheral);
extern void SysCtlPeripheralDeepSleepEnable(unsigned long ulPeripheral);
extern void SysCtlPeripheralDeepSleepDisable(unsigned long ulPeripheral);
extern void SysCtlPeripheralClockGating(tBoolean bEnable);
extern void SysCtlIntRegister(void (*pfnHandler)(void));
extern void SysCtlIntUnregister(void);
extern void SysCtlIntEnable(unsigned long ulInts);
extern void SysCtlIntDisable(unsigned long ulInts);
extern void SysCtlIntClear(unsigned long ulInts);
extern unsigned long SysCtlIntStatus(tBoolean bMasked);
extern void SysCtlLDOSet(unsigned long ulVoltage);
extern unsigned long SysCtlLDOGet(void);
extern void SysCtlLDOConfigSet(unsigned long ulConfig);
extern void SysCtlReset(void);
extern void SysCtlSleep(void);
extern void SysCtlDeepSleep(void);
extern unsigned long SysCtlResetCauseGet(void);
extern void SysCtlResetCauseClear(unsigned long ulCauses);
extern void SysCtlBrownOutConfigSet(unsigned long ulConfig,
                                    unsigned long ulDelay);
extern void SysCtlDelay(unsigned long ulCount);
extern void SysCtlMOSCConfigSet(unsigned long ulConfig);
extern unsigned long SysCtlPIOSCCalibrate(unsigned long ulType);
extern void SysCtlClockSet(unsigned long ulConfig);
extern unsigned long SysCtlClockGet(void);
extern void SysCtlDeepSleepClockSet(unsigned long ulConfig);
extern void SysCtlPWMClockSet(unsigned long ulConfig);
extern unsigned long SysCtlPWMClockGet(void);
extern void SysCtlADCSpeedSet(unsigned long ulSpeed);
extern unsigned long SysCtlADCSpeedGet(void);
extern void SysCtlIOSCVerificationSet(tBoolean bEnable);
extern void SysCtlMOSCVerificationSet(tBoolean bEnable);
extern void SysCtlPLLVerificationSet(tBoolean bEnable);
extern void SysCtlClkVerificationClear(void);
extern void SysCtlGPIOAHBEnable(unsigned long ulGPIOPeripheral);
extern void SysCtlGPIOAHBDisable(unsigned long ulGPIOPeripheral);
extern void SysCtlUSBPLLEnable(void);
extern void SysCtlUSBPLLDisable(void);
extern unsigned long SysCtlI2SMClkSet(unsigned long ulInputClock,
                                      unsigned long ulMClk);










#line 28 "..\\..\\..\\utils\\scheduler.c"
#line 1 "..\\..\\..\\driverlib/interrupt.h"


































































extern tBoolean IntMasterEnable(void);
extern tBoolean IntMasterDisable(void);
extern void IntRegister(unsigned long ulInterrupt, void (*pfnHandler)(void));
extern void IntUnregister(unsigned long ulInterrupt);
extern void IntPriorityGroupingSet(unsigned long ulBits);
extern unsigned long IntPriorityGroupingGet(void);
extern void IntPrioritySet(unsigned long ulInterrupt,
                           unsigned char ucPriority);
extern long IntPriorityGet(unsigned long ulInterrupt);
extern void IntEnable(unsigned long ulInterrupt);
extern void IntDisable(unsigned long ulInterrupt);
extern unsigned long IntIsEnabled(unsigned long ulInterrupt);
extern void IntPendSet(unsigned long ulInterrupt);
extern void IntPendClear(unsigned long ulInterrupt);
extern void IntPriorityMaskSet(unsigned long ulPriorityMask);
extern unsigned long IntPriorityMaskGet(void);










#line 29 "..\\..\\..\\utils\\scheduler.c"
#line 1 "..\\..\\..\\driverlib/debug.h"
















































extern void __error__(char *pcFilename, unsigned long ulLine);







#line 67 "..\\..\\..\\driverlib/debug.h"

#line 30 "..\\..\\..\\utils\\scheduler.c"
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










#line 31 "..\\..\\..\\utils\\scheduler.c"








static volatile unsigned long g_ulSchedulerTickCount;











void
SchedulerSysTickIntHandler(void)
{
    g_ulSchedulerTickCount++;
}
























void
SchedulerInit(unsigned long ulTicksPerSecond)
{
    ;

    
    
    
    SysTickPeriodSet(SysCtlClockGet() / ulTicksPerSecond);
    SysTickEnable();
    SysTickIntEnable();
}


















void
SchedulerRun(void)
{
    unsigned long ulLoop;
    tSchedulerTask *psTask;

    
    
    
    for(ulLoop = 0; ulLoop < g_ulSchedulerNumTasks; ulLoop++)
    {
        
        
        
        psTask = &g_psSchedulerTable[ulLoop];

        
        
        
        if(psTask->bActive && (SchedulerElapsedTicksGet(psTask->ulLastCall) >=
           psTask->ulFrequencyTicks))
        {
            
            
            
            psTask->ulLastCall = g_ulSchedulerTickCount;

            
            
            
            psTask->pfnFunction(psTask->pvParam);
        }
    }
}




















void
SchedulerTaskEnable(unsigned long ulIndex, tBoolean bRunNow)
{
    
    
    
    if(ulIndex < g_ulSchedulerNumTasks)
    {
        
        
        
        g_psSchedulerTable[ulIndex].bActive = 1;

        
        
        
        
        
        if(bRunNow)
        {
            
            
            
            g_psSchedulerTable[ulIndex].ulLastCall = (g_ulSchedulerTickCount -
                            g_psSchedulerTable[ulIndex].ulFrequencyTicks);
        }
        else
        {
            
            
            
            g_psSchedulerTable[ulIndex].ulLastCall = g_ulSchedulerTickCount;
        }
    }
}















void
SchedulerTaskDisable(unsigned long ulIndex)
{
    
    
    
    if(ulIndex < g_ulSchedulerNumTasks)
    {
        
        
        
        g_psSchedulerTable[ulIndex].bActive = 0;
    }
}












unsigned long
SchedulerTickCountGet(void)
{
    return(g_ulSchedulerTickCount);
}




















unsigned long
SchedulerElapsedTicksGet(unsigned long ulTickCount)
{
    
    
    
    
    return(SchedulerElapsedTicksCalc(ulTickCount, g_ulSchedulerTickCount));
}


















unsigned long
SchedulerElapsedTicksCalc(unsigned long ulTickStart, unsigned long ulTickEnd)
{
    return((ulTickEnd > ulTickStart) ? (ulTickEnd - ulTickStart) :
           ((0xFFFFFFFF - ulTickStart) + ulTickEnd + 1));
}







