#line 1 "drive_task.c"
























#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 26 "drive_task.c"
#line 1 "..\\..\\..\\inc/hw_memmap.h"
















































#line 127 "..\\..\\..\\inc/hw_memmap.h"
                                            
#line 143 "..\\..\\..\\inc/hw_memmap.h"














#line 164 "..\\..\\..\\inc/hw_memmap.h"



#line 27 "drive_task.c"
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










#line 28 "drive_task.c"
#line 1 "..\\..\\..\\driverlib/timer.h"




























































                                            


                                            
#line 85 "..\\..\\..\\driverlib/timer.h"







#line 101 "..\\..\\..\\driverlib/timer.h"

























#line 150 "..\\..\\..\\driverlib/timer.h"






extern void TimerEnable(unsigned long ulBase, unsigned long ulTimer);
extern void TimerDisable(unsigned long ulBase, unsigned long ulTimer);
extern void TimerConfigure(unsigned long ulBase, unsigned long ulConfig);
extern void TimerControlLevel(unsigned long ulBase, unsigned long ulTimer,
                              tBoolean bInvert);
extern void TimerControlTrigger(unsigned long ulBase, unsigned long ulTimer,
                                tBoolean bEnable);
extern void TimerControlEvent(unsigned long ulBase, unsigned long ulTimer,
                              unsigned long ulEvent);
extern void TimerControlStall(unsigned long ulBase, unsigned long ulTimer,
                              tBoolean bStall);
extern void TimerControlWaitOnTrigger(unsigned long ulBase,
                                      unsigned long ulTimer,
                                      tBoolean bWait);
extern void TimerRTCEnable(unsigned long ulBase);
extern void TimerRTCDisable(unsigned long ulBase);
extern void TimerPrescaleSet(unsigned long ulBase, unsigned long ulTimer,
                             unsigned long ulValue);
extern unsigned long TimerPrescaleGet(unsigned long ulBase,
                                      unsigned long ulTimer);
extern void TimerPrescaleMatchSet(unsigned long ulBase, unsigned long ulTimer,
                                  unsigned long ulValue);
extern unsigned long TimerPrescaleMatchGet(unsigned long ulBase,
                                           unsigned long ulTimer);
extern void TimerLoadSet(unsigned long ulBase, unsigned long ulTimer,
                         unsigned long ulValue);
extern unsigned long TimerLoadGet(unsigned long ulBase, unsigned long ulTimer);
extern void TimerLoadSet64(unsigned long ulBase, unsigned long long ullValue);
extern unsigned long long TimerLoadGet64(unsigned long ulBase);
extern unsigned long TimerValueGet(unsigned long ulBase,
                                   unsigned long ulTimer);
extern unsigned long long TimerValueGet64(unsigned long ulBase);
extern void TimerMatchSet(unsigned long ulBase, unsigned long ulTimer,
                          unsigned long ulValue);
extern unsigned long TimerMatchGet(unsigned long ulBase,
                                   unsigned long ulTimer);
extern void TimerMatchSet64(unsigned long ulBase, unsigned long long ullValue);
extern unsigned long long TimerMatchGet64(unsigned long ulBase);
extern void TimerIntRegister(unsigned long ulBase, unsigned long ulTimer,
                             void (*pfnHandler)(void));
extern void TimerIntUnregister(unsigned long ulBase, unsigned long ulTimer);
extern void TimerIntEnable(unsigned long ulBase, unsigned long ulIntFlags);
extern void TimerIntDisable(unsigned long ulBase, unsigned long ulIntFlags);
extern unsigned long TimerIntStatus(unsigned long ulBase, tBoolean bMasked);
extern void TimerIntClear(unsigned long ulBase, unsigned long ulIntFlags);
extern void TimerSynchronize(unsigned long ulBase, unsigned long ulTimers);








extern void TimerQuiesce(unsigned long ulBase);







#line 226 "..\\..\\..\\driverlib/timer.h"










#line 29 "drive_task.c"
#line 1 "..\\..\\..\\driverlib/rom.h"















































#line 79 "..\\..\\..\\driverlib/rom.h"






#line 364 "..\\..\\..\\driverlib/rom.h"






#line 541 "..\\..\\..\\driverlib/rom.h"






#line 626 "..\\..\\..\\driverlib/rom.h"






#line 816 "..\\..\\..\\driverlib/rom.h"






#line 1017 "..\\..\\..\\driverlib/rom.h"






#line 1096 "..\\..\\..\\driverlib/rom.h"






#line 1247 "..\\..\\..\\driverlib/rom.h"






#line 1289 "..\\..\\..\\driverlib/rom.h"






#line 1662 "..\\..\\..\\driverlib/rom.h"






#line 1917 "..\\..\\..\\driverlib/rom.h"






#line 2264 "..\\..\\..\\driverlib/rom.h"






#line 2452 "..\\..\\..\\driverlib/rom.h"






#line 2565 "..\\..\\..\\driverlib/rom.h"






#line 2773 "..\\..\\..\\driverlib/rom.h"






#line 2846 "..\\..\\..\\driverlib/rom.h"






#line 2973 "..\\..\\..\\driverlib/rom.h"






#line 3311 "..\\..\\..\\driverlib/rom.h"






#line 3476 "..\\..\\..\\driverlib/rom.h"






#line 3761 "..\\..\\..\\driverlib/rom.h"






#line 3937 "..\\..\\..\\driverlib/rom.h"






#line 4309 "..\\..\\..\\driverlib/rom.h"






#line 4331 "..\\..\\..\\driverlib/rom.h"






#line 4407 "..\\..\\..\\driverlib/rom.h"






#line 4680 "..\\..\\..\\driverlib/rom.h"






#line 5030 "..\\..\\..\\driverlib/rom.h"






#line 5237 "..\\..\\..\\driverlib/rom.h"






#line 5796 "..\\..\\..\\driverlib/rom.h"






#line 5959 "..\\..\\..\\driverlib/rom.h"






#line 6007 "..\\..\\..\\driverlib/rom.h"






#line 6027 "..\\..\\..\\driverlib/rom.h"

#line 30 "drive_task.c"
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










#line 31 "drive_task.c"
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










#line 32 "drive_task.c"
#line 1 "drive_task.h"





























































extern void DriveTask(void *pvParam);
extern void DriveStop(void);
extern void DriveRun(unsigned long ulDirection, unsigned long ulSpeed);
extern void DriveInit(void);
extern long DriveSpeedGet(unsigned long ulMotor);










#line 33 "drive_task.c"
#line 1 "pid.h"











































typedef struct
{
    
    
    
    long lIntegrator;

    
    
    
    long lIntegMax;

    
    
    
    long lIntegMin;

    
    
    
    
    long lPrevError;

    
    
    
    long lPGain;

    
    
    
    long lIGain;

    
    
    
    long lDGain;
}
tPIDState;






extern void PIDInitialize(tPIDState *psState, long lIntegMax, long lIntegMin,
                          long lPGain, long lIGain, long lDGain);
extern void PIDGainPSet(tPIDState *psState, long lPGain);
extern void PIDGainISet(tPIDState *psState, long lIGain, long lIntegMax,
                        long lIntegMin);
extern void PIDGainDSet(tPIDState *psState, long lDGain);
extern void PIDReset(tPIDState *psState);
extern long PIDUpdate(tPIDState *psState, long lError);










#line 34 "drive_task.c"


























static unsigned long g_ulWheelTimerTickConstant;
static unsigned long g_ulMinRPMTicks;
static unsigned long g_ulMaxRPMTicks;






typedef struct
{
    
    
    
    tBoolean bReverse;

    
    
    
    volatile tBoolean bRunning;

    
    
    
    long lTargetSpeed;

    
    
    
    volatile long lActualSpeed;

    
    
    
    
    volatile unsigned long ulLastEdgeTick;

    
    
    
    
    long lDuty;

    
    
    
    tPIDState sPID;

} tMotorDrive;

static tMotorDrive g_sMotorDrives[2];
































static void
DriveWheelSensorHandler(tWheel eWheel)
{
    unsigned long ulNowTicks;
    unsigned long ulElapsed;

    
    
    
    if((eWheel != WHEEL_LEFT) && (eWheel != WHEEL_RIGHT))
    {
        
        
        
        return;
    }

    
    
    
    ulNowTicks = ((unsigned long (*)(unsigned long ulBase, unsigned long ulTimer))((unsigned long *)(((unsigned long *)0x01000010)[11]))[16])(0x40030000, 0x000000ff);

    
    
    
    
    
    
    if(!g_sMotorDrives[eWheel].bRunning)
    {
        g_sMotorDrives[eWheel].ulLastEdgeTick = ulNowTicks;
        g_sMotorDrives[eWheel].bRunning = 1;
        return;
    }

    
    
    
    
    
    ulElapsed = ulNowTicks - g_sMotorDrives[eWheel].ulLastEdgeTick;

    
    
    
    if(ulElapsed > g_ulMinRPMTicks)
    {
        ulElapsed = g_ulMinRPMTicks;
    }
    else if(ulElapsed < g_ulMaxRPMTicks)
    {
        ulElapsed = g_ulMaxRPMTicks;
    }

    
    
    
    
    g_sMotorDrives[eWheel].ulLastEdgeTick = ulNowTicks;

    
    
    
    g_sMotorDrives[eWheel].lActualSpeed = g_ulWheelTimerTickConstant /
                                          ulElapsed;
}







long
DriveSpeedGet(unsigned long ulMotor)
{
    unsigned long ulElapsed;
    unsigned long ulNowTicks;
    volatile unsigned long ulLastTick;

    
    
    
    
    
    ulLastTick = g_sMotorDrives[ulMotor].ulLastEdgeTick;

    
    
    
    ulNowTicks = ((unsigned long (*)(unsigned long ulBase, unsigned long ulTimer))((unsigned long *)(((unsigned long *)0x01000010)[11]))[16])(0x40030000, 0x000000ff);

    
    
    
    ulElapsed = ulNowTicks - ulLastTick;

    
    
    
    
    if(ulElapsed > g_ulMinRPMTicks)
    {
        
        
        
        g_sMotorDrives[ulMotor].lActualSpeed = 0;
        g_sMotorDrives[ulMotor].bRunning = 0;
    }

    
    
    
    return(g_sMotorDrives[ulMotor].lActualSpeed);
}












void
DriveTask(void *pvParam)
{
    unsigned int uMotor;
    long lDiff;
    long lPIDOutput;
    unsigned short usPercent;

    
    
    
    for(uMotor = 0; uMotor < 2; uMotor++)
    {
        tMotorDrive *pMotor = &g_sMotorDrives[uMotor];

        
        
        
        lDiff = pMotor->lTargetSpeed - pMotor->lActualSpeed;

        
        
        
        
        
        lPIDOutput = PIDUpdate(&pMotor->sPID, lDiff << 16);

        
        
        
        
        
        if(lPIDOutput > (10 << 16))
        {
            lPIDOutput = 10 << 16;
        }
        else if(lPIDOutput < -(10 << 16))
        {
            lPIDOutput = -10 << 16;
        }

        
        
        
        pMotor->lDuty += lPIDOutput;

        
        
        
        if(pMotor->lDuty > (100 << 16))
        {
            pMotor->lDuty = 100 << 16;
        }
        else if(pMotor->lDuty < 0)
        {
            pMotor->lDuty = 0;
        }

        
        
        
        
        
        
        usPercent = (unsigned short)(pMotor->lDuty >> 8);
        MotorSpeed((unsigned char)uMotor, usPercent);
    }
}






void
DriveStop(void)
{
    unsigned int uMotor;

    
    
    
    for(uMotor = 0; uMotor < 2; uMotor++)
    {
        tMotorDrive *pMotor = &g_sMotorDrives[uMotor];

        
        
        
        MotorSpeed((unsigned char)uMotor, 0);
        MotorStop(uMotor);

        
        
        
        pMotor->lActualSpeed = 0;
        pMotor->lTargetSpeed = 0;

        
        
        
        pMotor->bRunning = 0;

        
        
        
        PIDReset(&pMotor->sPID);
    }
}











void
DriveRun(unsigned long ulDirection, unsigned long ulSpeed)
{
    
    
    
    if(((ulDirection != 4) &&
        (ulDirection != 3) &&
        (ulDirection != 0) &&
        (ulDirection != 1)) ||
       (ulSpeed > 100))
    {
        return;
    }

    
    
    
    switch(ulDirection)
    {
        
        
        
        case 0:
        {
            g_sMotorDrives[0].bReverse = 1;
            g_sMotorDrives[1].bReverse = 0;
            break;
        }

        
        
        
        case 1:
        {
            g_sMotorDrives[0].bReverse = 0;
            g_sMotorDrives[1].bReverse = 1;
            break;
        }

        
        
        
        case 3:
        {
            g_sMotorDrives[0].bReverse = 0;
            g_sMotorDrives[1].bReverse = 0;
            break;
        }

        
        
        
        case 4:
        {
            g_sMotorDrives[0].bReverse = 1;
            g_sMotorDrives[1].bReverse = 1;
            break;
        }

        
        
        
        default:
        {
            DriveStop();
            return;
        }
    }

    
    
    
    g_sMotorDrives[0].lTargetSpeed = ulSpeed;
    g_sMotorDrives[1].lTargetSpeed = ulSpeed;

    
    
    
    MotorDir(LEFT_SIDE,
             g_sMotorDrives[0].bReverse ? REVERSE : FORWARD);
    MotorDir(RIGHT_SIDE,
             g_sMotorDrives[1].bReverse ? REVERSE : FORWARD);

    
    
    
    
    
    g_sMotorDrives[0].lDuty = ulSpeed << 16;
    g_sMotorDrives[1].lDuty = ulSpeed << 16;
    MotorSpeed(LEFT_SIDE, (unsigned short)(ulSpeed << 8));
    MotorSpeed(RIGHT_SIDE, (unsigned short)(ulSpeed << 8));
    MotorRun(LEFT_SIDE);
    MotorRun(RIGHT_SIDE);

    
    
    
    
    
    
    g_sMotorDrives[LEFT_SIDE].bRunning = 0;
    g_sMotorDrives[RIGHT_SIDE].bRunning = 0;
    g_sMotorDrives[LEFT_SIDE].lActualSpeed = ulSpeed;
    g_sMotorDrives[RIGHT_SIDE].lActualSpeed = ulSpeed;

    
    
    
    PIDReset(&g_sMotorDrives[LEFT_SIDE].sPID);
    PIDReset(&g_sMotorDrives[RIGHT_SIDE].sPID);
}







void
DriveInit(void)
{
    unsigned int uMotor;

    
    
    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x10100001);
    ((void (*)(unsigned long ulBase, unsigned long ulConfig))((unsigned long *)(((unsigned long *)0x01000010)[11]))[3])(0x40030000, 0x00000032);
    ((void (*)(unsigned long ulBase, unsigned long ulTimer, unsigned long ulValue))((unsigned long *)(((unsigned long *)0x01000010)[11]))[14])(0x40030000, 0x0000ffff, 0xffffffff);
    ((void (*)(unsigned long ulBase, unsigned long ulTimer))((unsigned long *)(((unsigned long *)0x01000010)[11]))[1])(0x40030000, 0x0000ffff);

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    g_ulWheelTimerTickConstant = (((unsigned long (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[13]))[24])() * 15) / 2;

    
    
    
    
    g_ulMaxRPMTicks = g_ulWheelTimerTickConstant / 100;
    g_ulMinRPMTicks = g_ulWheelTimerTickConstant / 5;

    
    
    
    MotorsInit();

    
    
    
    WheelSensorsInit(DriveWheelSensorHandler);

    
    
    
    for(uMotor = 0; uMotor < 2; uMotor++)
    {
        tMotorDrive *pMotor = &g_sMotorDrives[uMotor];

        
        
        
        PIDInitialize(&pMotor->sPID,
                      0, 0,
                      4096, 0, 0);

        
        
        
        pMotor->lActualSpeed = 0;
        pMotor->lTargetSpeed = 0;
        pMotor->bRunning = 0;
    }

    
    
    
    WheelSensorEnable();
    WheelSensorIntEnable(WHEEL_LEFT);
    WheelSensorIntEnable(WHEEL_RIGHT);
}
