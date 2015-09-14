#line 1 "..\\..\\..\\utils\\uartstdio.c"
























#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\stdarg.h"
 
 
 





 









#line 26 "C:\\Keil\\ARM\\RV31\\Inc\\stdarg.h"








 

 
 
  typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 






#line 118 "C:\\Keil\\ARM\\RV31\\Inc\\stdarg.h"











 
#line 26 "..\\..\\..\\utils\\uartstdio.c"
#line 1 "..\\..\\..\\inc/hw_ints.h"















































#line 57 "..\\..\\..\\inc/hw_ints.h"






#line 174 "..\\..\\..\\inc/hw_ints.h"




























#line 214 "..\\..\\..\\inc/hw_ints.h"



#line 27 "..\\..\\..\\utils\\uartstdio.c"
#line 1 "..\\..\\..\\inc/hw_memmap.h"
















































#line 127 "..\\..\\..\\inc/hw_memmap.h"
                                            
#line 143 "..\\..\\..\\inc/hw_memmap.h"














#line 164 "..\\..\\..\\inc/hw_memmap.h"



#line 28 "..\\..\\..\\utils\\uartstdio.c"
#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 29 "..\\..\\..\\utils\\uartstdio.c"
#line 1 "..\\..\\..\\inc/hw_uart.h"















































#line 55 "..\\..\\..\\inc/hw_uart.h"
                                            
#line 71 "..\\..\\..\\inc/hw_uart.h"






#line 83 "..\\..\\..\\inc/hw_uart.h"
























#line 116 "..\\..\\..\\inc/hw_uart.h"






























#line 157 "..\\..\\..\\inc/hw_uart.h"






#line 177 "..\\..\\..\\inc/hw_uart.h"







                                            
#line 191 "..\\..\\..\\inc/hw_uart.h"
                                            














                                            


                                            



                                            

                                            



                                            

                                            

                                            

                                            







                                            

                                            

                                            


                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            









                                            
#line 316 "..\\..\\..\\inc/hw_uart.h"
                                            

                                            

                                            

                                            

















                                            





































































#line 423 "..\\..\\..\\inc/hw_uart.h"































#line 465 "..\\..\\..\\inc/hw_uart.h"



















                                            









#line 519 "..\\..\\..\\inc/hw_uart.h"



#line 30 "..\\..\\..\\utils\\uartstdio.c"
#line 1 "..\\..\\..\\driverlib/debug.h"
















































extern void __error__(char *pcFilename, unsigned long ulLine);







#line 67 "..\\..\\..\\driverlib/debug.h"

#line 31 "..\\..\\..\\utils\\uartstdio.c"
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










#line 32 "..\\..\\..\\utils\\uartstdio.c"
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

#line 33 "..\\..\\..\\utils\\uartstdio.c"
#line 1 "..\\..\\..\\driverlib/rom_map.h"
















































#line 245 "..\\..\\..\\driverlib/rom_map.h"






#line 370 "..\\..\\..\\driverlib/rom_map.h"






#line 425 "..\\..\\..\\driverlib/rom_map.h"






#line 585 "..\\..\\..\\driverlib/rom_map.h"






#line 745 "..\\..\\..\\driverlib/rom_map.h"






#line 849 "..\\..\\..\\driverlib/rom_map.h"






#line 953 "..\\..\\..\\driverlib/rom_map.h"






#line 1022 "..\\..\\..\\driverlib/rom_map.h"






#line 1301 "..\\..\\..\\driverlib/rom_map.h"






#line 1524 "..\\..\\..\\driverlib/rom_map.h"






#line 1789 "..\\..\\..\\driverlib/rom_map.h"






#line 1963 "..\\..\\..\\driverlib/rom_map.h"






#line 2053 "..\\..\\..\\driverlib/rom_map.h"






#line 2318 "..\\..\\..\\driverlib/rom_map.h"






#line 2373 "..\\..\\..\\driverlib/rom_map.h"






#line 2512 "..\\..\\..\\driverlib/rom_map.h"






#line 2721 "..\\..\\..\\driverlib/rom_map.h"






#line 2832 "..\\..\\..\\driverlib/rom_map.h"






#line 3216 "..\\..\\..\\driverlib/rom_map.h"






#line 3334 "..\\..\\..\\driverlib/rom_map.h"






#line 3627 "..\\..\\..\\driverlib/rom_map.h"






#line 3661 "..\\..\\..\\driverlib/rom_map.h"






#line 3716 "..\\..\\..\\driverlib/rom_map.h"






#line 3918 "..\\..\\..\\driverlib/rom_map.h"






#line 4176 "..\\..\\..\\driverlib/rom_map.h"






#line 4350 "..\\..\\..\\driverlib/rom_map.h"






#line 4762 "..\\..\\..\\driverlib/rom_map.h"






#line 4880 "..\\..\\..\\driverlib/rom_map.h"






#line 4914 "..\\..\\..\\driverlib/rom_map.h"






#line 4928 "..\\..\\..\\driverlib/rom_map.h"

#line 34 "..\\..\\..\\utils\\uartstdio.c"
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










#line 35 "..\\..\\..\\utils\\uartstdio.c"
#line 1 "..\\..\\..\\driverlib/uart.h"



























































#line 72 "..\\..\\..\\driverlib/uart.h"










#line 96 "..\\..\\..\\driverlib/uart.h"
































































































extern void UARTParityModeSet(unsigned long ulBase, unsigned long ulParity);
extern unsigned long UARTParityModeGet(unsigned long ulBase);
extern void UARTFIFOLevelSet(unsigned long ulBase, unsigned long ulTxLevel,
                             unsigned long ulRxLevel);
extern void UARTFIFOLevelGet(unsigned long ulBase, unsigned long *pulTxLevel,
                             unsigned long *pulRxLevel);
extern void UARTConfigSetExpClk(unsigned long ulBase, unsigned long ulUARTClk,
                                unsigned long ulBaud, unsigned long ulConfig);
extern void UARTConfigGetExpClk(unsigned long ulBase, unsigned long ulUARTClk,
                                unsigned long *pulBaud,
                                unsigned long *pulConfig);
extern void UARTEnable(unsigned long ulBase);
extern void UARTDisable(unsigned long ulBase);
extern void UARTFIFOEnable(unsigned long ulBase);
extern void UARTFIFODisable(unsigned long ulBase);
extern void UARTEnableSIR(unsigned long ulBase, tBoolean bLowPower);
extern void UARTDisableSIR(unsigned long ulBase);
extern tBoolean UARTCharsAvail(unsigned long ulBase);
extern tBoolean UARTSpaceAvail(unsigned long ulBase);
extern long UARTCharGetNonBlocking(unsigned long ulBase);
extern long UARTCharGet(unsigned long ulBase);
extern tBoolean UARTCharPutNonBlocking(unsigned long ulBase,
                                       unsigned char ucData);
extern void UARTCharPut(unsigned long ulBase, unsigned char ucData);
extern void UARTBreakCtl(unsigned long ulBase, tBoolean bBreakState);
extern tBoolean UARTBusy(unsigned long ulBase);
extern void UARTIntRegister(unsigned long ulBase, void(*pfnHandler)(void));
extern void UARTIntUnregister(unsigned long ulBase);
extern void UARTIntEnable(unsigned long ulBase, unsigned long ulIntFlags);
extern void UARTIntDisable(unsigned long ulBase, unsigned long ulIntFlags);
extern unsigned long UARTIntStatus(unsigned long ulBase, tBoolean bMasked);
extern void UARTIntClear(unsigned long ulBase, unsigned long ulIntFlags);
extern void UARTDMAEnable(unsigned long ulBase, unsigned long ulDMAFlags);
extern void UARTDMADisable(unsigned long ulBase, unsigned long ulDMAFlags);
extern unsigned long UARTRxErrorGet(unsigned long ulBase);
extern void UARTRxErrorClear(unsigned long ulBase);
extern void UARTSmartCardEnable(unsigned long ulBase);
extern void UARTSmartCardDisable(unsigned long ulBase);
extern void UARTModemControlSet(unsigned long ulBase,
                                unsigned long ulControl);
extern void UARTModemControlClear(unsigned long ulBase,
                                  unsigned long ulControl);
extern unsigned long UARTModemControlGet(unsigned long ulBase);
extern unsigned long UARTModemStatusGet(unsigned long ulBase);
extern void UARTFlowControlSet(unsigned long ulBase, unsigned long ulMode);
extern unsigned long UARTFlowControlGet(unsigned long ulBase);
extern void UARTTxIntModeSet(unsigned long ulBase, unsigned long ulMode);
extern unsigned long UARTTxIntModeGet(unsigned long ulBase);
extern void UARTClockSourceSet(unsigned long ulBase, unsigned long ulSource);
extern unsigned long UARTClockSourceGet(unsigned long ulBase);
extern void UART9BitEnable(unsigned long ulBase);
extern void UART9BitDisable(unsigned long ulBase);
extern void UART9BitAddrSet(unsigned long ulBase, unsigned char ucAddr,
                            unsigned char ucMask);
extern void UART9BitAddrSend(unsigned long ulBase, unsigned char ucAddr);







#line 256 "..\\..\\..\\driverlib/uart.h"
#line 265 "..\\..\\..\\driverlib/uart.h"










#line 36 "..\\..\\..\\utils\\uartstdio.c"
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











#line 37 "..\\..\\..\\utils\\uartstdio.c"

























static tBoolean g_bDisableEcho;







static unsigned char g_pcUARTTxBuffer[1024];
static volatile unsigned long g_ulUARTTxWriteIndex = 0;
static volatile unsigned long g_ulUARTTxReadIndex = 0;







static unsigned char g_pcUARTRxBuffer[128];
static volatile unsigned long g_ulUARTRxWriteIndex = 0;
static volatile unsigned long g_ulUARTRxReadIndex = 0;






#line 100 "..\\..\\..\\utils\\uartstdio.c"






#line 118 "..\\..\\..\\utils\\uartstdio.c"






static unsigned long g_ulBase = 0;







static const char * const g_pcHex = "0123456789abcdef";






static const unsigned long g_ulUARTBase[3] =
{
    0x4000C000, 0x4000D000, 0x4000E000
};







static const unsigned long g_ulUARTInt[3] =
{
    21, 22, 49
};






static unsigned long g_ulPortNum;







static const unsigned long g_ulUARTPeriph[3] =
{
    0x10000001, 0x10000002, 0x10000004
};



















static tBoolean
IsBufferFull(volatile unsigned long *pulRead,
             volatile unsigned long *pulWrite, unsigned long ulSize)
{
    unsigned long ulWrite;
    unsigned long ulRead;

    ulWrite = *pulWrite;
    ulRead = *pulRead;

    return((((ulWrite + 1) % ulSize) == ulRead) ? 1 : 0);
}



















static tBoolean
IsBufferEmpty(volatile unsigned long *pulRead,
              volatile unsigned long *pulWrite)
{
    unsigned long ulWrite;
    unsigned long ulRead;

    ulWrite = *pulWrite;
    ulRead = *pulRead;

    return((ulWrite  == ulRead) ? 1 : 0);
}



















static unsigned long
GetBufferCount(volatile unsigned long *pulRead,
               volatile unsigned long *pulWrite, unsigned long ulSize)
{
    unsigned long ulWrite;
    unsigned long ulRead;

    ulWrite = *pulWrite;
    ulRead = *pulRead;

    return((ulWrite >= ulRead) ? (ulWrite - ulRead) :
                                 (ulSize - (ulRead - ulWrite)));
}









static void
UARTPrimeTransmit(unsigned long ulBase)
{
    
    
    
    if(!(IsBufferEmpty(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex)))
    {
        
        
        
        
        ((void (*)(unsigned long ulInterrupt))((unsigned long *)(((unsigned long *)0x01000010)[14]))[3])(g_ulUARTInt[g_ulPortNum]);

        
        
        
        
        while(((tBoolean (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[1]))[12])(ulBase) && !(IsBufferEmpty(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex)))
        {
            ((tBoolean (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[1]))[15])(ulBase,
                                       g_pcUARTTxBuffer[g_ulUARTTxReadIndex]);
            (g_ulUARTTxReadIndex) = ((g_ulUARTTxReadIndex) + 1) % 1024;
        }

        
        
        
        ((void (*)(unsigned long ulInterrupt))((unsigned long *)(((unsigned long *)0x01000010)[14]))[0])(g_ulUARTInt[g_ulPortNum]);
    }
}

























void
UARTStdioInit(unsigned long ulPortNum)
{
    
    
    
    
    UARTStdioInitExpClk(ulPortNum, 115200);
}


























void
UARTStdioInitExpClk(unsigned long ulPortNum, unsigned long ulBaud)
{
    
    
    
    ;



    
    
    
    ;


    
    
    
    if(!((tBoolean (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[4])(g_ulUARTPeriph[ulPortNum]))
    {
        return;
    }

    
    
    
    g_ulBase = g_ulUARTBase[ulPortNum];

    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(g_ulUARTPeriph[ulPortNum]);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulUARTClk, unsigned long ulBaud, unsigned long ulConfig))((unsigned long *)(((unsigned long *)0x01000010)[1]))[5])(g_ulBase, ((unsigned long (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[13]))[24])(), ulBaud,
                            (0x00000000 | 0x00000000 |
                             0x00000060));


    
    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulTxLevel, unsigned long ulRxLevel))((unsigned long *)(((unsigned long *)0x01000010)[1]))[3])(g_ulBase, 0x00000000, 0x00000000);

    
    
    
    UARTFlushRx();
    UARTFlushTx(1);

    
    
    
    g_ulPortNum = ulPortNum;

    
    
    
    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulIntFlags))((unsigned long *)(((unsigned long *)0x01000010)[1]))[18])(g_ulBase, 0xFFFFFFFF);
    ((void (*)(unsigned long ulBase, unsigned long ulIntFlags))((unsigned long *)(((unsigned long *)0x01000010)[1]))[17])(g_ulBase, 0x010 | 0x040);
    ((void (*)(unsigned long ulInterrupt))((unsigned long *)(((unsigned long *)0x01000010)[14]))[0])(g_ulUARTInt[ulPortNum]);


    
    
    
    ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[1]))[7])(g_ulBase);
}



























int
UARTwrite(const char *pcBuf, unsigned long ulLen)
{

    unsigned int uIdx;

    
    
    
    ;
    ;

    
    
    
    for(uIdx = 0; uIdx < ulLen; uIdx++)
    {
        
        
        
        
        if(pcBuf[uIdx] == '\n')
        {
            if(!(IsBufferFull(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex, 1024)))
            {
                g_pcUARTTxBuffer[g_ulUARTTxWriteIndex] = '\r';
                (g_ulUARTTxWriteIndex) = ((g_ulUARTTxWriteIndex) + 1) % 1024;
            }
            else
            {
                
                
                
                break;
            }
        }

        
        
        
        if(!(IsBufferFull(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex, 1024)))
        {
            g_pcUARTTxBuffer[g_ulUARTTxWriteIndex] = pcBuf[uIdx];
            (g_ulUARTTxWriteIndex) = ((g_ulUARTTxWriteIndex) + 1) % 1024;
        }
        else
        {
            
            
            
            break;
        }
    }

    
    
    
    
    if(!(IsBufferEmpty(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex)))
    {
        UARTPrimeTransmit(g_ulBase);
        ((void (*)(unsigned long ulBase, unsigned long ulIntFlags))((unsigned long *)(((unsigned long *)0x01000010)[1]))[17])(g_ulBase, 0x020);
    }

    
    
    
    return(uIdx);
#line 570 "..\\..\\..\\utils\\uartstdio.c"
}






























int
UARTgets(char *pcBuf, unsigned long ulLen)
{

    unsigned long ulCount = 0;
    char cChar;

    
    
    
    ;
    ;
    ;

    
    
    
    
    ulLen--;

    
    
    
    while(1)
    {
        
        
        
        if(!(IsBufferEmpty(&g_ulUARTRxReadIndex, &g_ulUARTRxWriteIndex)))
        {
            cChar = g_pcUARTRxBuffer[g_ulUARTRxReadIndex];
            (g_ulUARTRxReadIndex) = ((g_ulUARTRxReadIndex) + 1) % 128;

            
            
            
            if((cChar == '\r') || (cChar == '\n') || (cChar == 0x1b))
            {
                
                
                
                break;
            }

            
            
            
            
            
            
            if(ulCount < ulLen)
            {
                
                
                
                pcBuf[ulCount] = cChar;

                
                
                
                ulCount++;
            }
        }
    }

    
    
    
    pcBuf[ulCount] = 0;

    
    
    
    return(ulCount);
#line 801 "..\\..\\..\\utils\\uartstdio.c"
}
















unsigned char
UARTgetc(void)
{

    unsigned char cChar;

    
    
    
    while((IsBufferEmpty(&g_ulUARTRxReadIndex, &g_ulUARTRxWriteIndex)))
    {
        
        
        
        
    }

    
    
    
    cChar = g_pcUARTRxBuffer[g_ulUARTRxReadIndex];
    (g_ulUARTRxReadIndex) = ((g_ulUARTRxReadIndex) + 1) % 128;

    
    
    
    return(cChar);
#line 852 "..\\..\\..\\utils\\uartstdio.c"
}







































void
UARTprintf(const char *pcString, ...)
{
    unsigned long ulIdx, ulValue, ulPos, ulCount, ulBase, ulNeg;
    char *pcStr, pcBuf[16], cFill;
    va_list vaArgP;

    
    
    
    ;

    
    
    
    __va_start(vaArgP, pcString);

    
    
    
    while(*pcString)
    {
        
        
        
        for(ulIdx = 0; (pcString[ulIdx] != '%') && (pcString[ulIdx] != '\0');
            ulIdx++)
        {
        }

        
        
        
        UARTwrite(pcString, ulIdx);

        
        
        
        pcString += ulIdx;

        
        
        
        if(*pcString == '%')
        {
            
            
            
            pcString++;

            
            
            
            
            ulCount = 0;
            cFill = ' ';

            
            
            
            
            
again:

            
            
            
            switch(*pcString++)
            {
                
                
                
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                {
                    
                    
                    
                    
                    if((pcString[-1] == '0') && (ulCount == 0))
                    {
                        cFill = '0';
                    }

                    
                    
                    
                    ulCount *= 10;
                    ulCount += pcString[-1] - '0';

                    
                    
                    
                    goto again;
                }

                
                
                
                case 'c':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    UARTwrite((char *)&ulValue, 1);

                    
                    
                    
                    break;
                }

                
                
                
                case 'd':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    ulPos = 0;

                    
                    
                    
                    
                    if((long)ulValue < 0)
                    {
                        
                        
                        
                        ulValue = -(long)ulValue;

                        
                        
                        
                        ulNeg = 1;
                    }
                    else
                    {
                        
                        
                        
                        
                        ulNeg = 0;
                    }

                    
                    
                    
                    ulBase = 10;

                    
                    
                    
                    goto convert;
                }

                
                
                
                case 's':
                {
                    
                    
                    
                    pcStr = __va_arg(vaArgP, char *);

                    
                    
                    
                    for(ulIdx = 0; pcStr[ulIdx] != '\0'; ulIdx++)
                    {
                    }

                    
                    
                    
                    UARTwrite(pcStr, ulIdx);

                    
                    
                    
                    if(ulCount > ulIdx)
                    {
                        ulCount -= ulIdx;
                        while(ulCount--)
                        {
                            UARTwrite(" ", 1);
                        }
                    }
                    
                    
                    
                    break;
                }

                
                
                
                case 'u':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    ulPos = 0;

                    
                    
                    
                    ulBase = 10;

                    
                    
                    
                    
                    ulNeg = 0;

                    
                    
                    
                    goto convert;
                }

                
                
                
                
                
                
                case 'x':
                case 'X':
                case 'p':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    ulPos = 0;

                    
                    
                    
                    ulBase = 16;

                    
                    
                    
                    
                    ulNeg = 0;

                    
                    
                    
                    
convert:
                    for(ulIdx = 1;
                        (((ulIdx * ulBase) <= ulValue) &&
                         (((ulIdx * ulBase) / ulBase) == ulIdx));
                        ulIdx *= ulBase, ulCount--)
                    {
                    }

                    
                    
                    
                    
                    if(ulNeg)
                    {
                        ulCount--;
                    }

                    
                    
                    
                    
                    if(ulNeg && (cFill == '0'))
                    {
                        
                        
                        
                        pcBuf[ulPos++] = '-';

                        
                        
                        
                        
                        ulNeg = 0;
                    }

                    
                    
                    
                    
                    if((ulCount > 1) && (ulCount < 16))
                    {
                        for(ulCount--; ulCount; ulCount--)
                        {
                            pcBuf[ulPos++] = cFill;
                        }
                    }

                    
                    
                    
                    
                    if(ulNeg)
                    {
                        
                        
                        
                        pcBuf[ulPos++] = '-';
                    }

                    
                    
                    
                    for(; ulIdx; ulIdx /= ulBase)
                    {
                        pcBuf[ulPos++] = g_pcHex[(ulValue / ulIdx) % ulBase];
                    }

                    
                    
                    
                    UARTwrite(pcBuf, ulPos);

                    
                    
                    
                    break;
                }

                
                
                
                case '%':
                {
                    
                    
                    
                    UARTwrite(pcString - 1, 1);

                    
                    
                    
                    break;
                }

                
                
                
                default:
                {
                    
                    
                    
                    UARTwrite("ERROR", 5);

                    
                    
                    
                    break;
                }
            }
        }
    }

    
    
    
    __va_end(vaArgP);
}













int
UARTRxBytesAvail(void)
{
    return((GetBufferCount(&g_ulUARTRxReadIndex, &g_ulUARTRxWriteIndex, 128)));
}














int
UARTTxBytesFree(void)
{
    return((1024 - (GetBufferCount(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex, 1024))));
}






















int
UARTPeek(unsigned char ucChar)
{
    int iCount;
    int iAvail;
    unsigned long ulReadIndex;

    
    
    
    iAvail = (int)(GetBufferCount(&g_ulUARTRxReadIndex, &g_ulUARTRxWriteIndex, 128));
    ulReadIndex = g_ulUARTRxReadIndex;

    
    
    
    for(iCount = 0; iCount < iAvail; iCount++)
    {
        if(g_pcUARTRxBuffer[ulReadIndex] == ucChar)
        {
            
            
            
            return(iCount);
        }
        else
        {
            
            
            
            (ulReadIndex) = ((ulReadIndex) + 1) % 128;
        }
    }

    
    
    
    
    return(-1);
}














void
UARTFlushRx(void)
{
    unsigned long ulInt;

    
    
    
    ulInt = ((tBoolean (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[14]))[2])();

    
    
    
    g_ulUARTRxReadIndex = 0;
    g_ulUARTRxWriteIndex = 0;

    
    
    
    
    if(!ulInt)
    {
        ((tBoolean (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[14]))[1])();
    }
}



















void
UARTFlushTx(tBoolean bDiscard)
{
    unsigned long ulInt;

    
    
    
    if(bDiscard)
    {
        
        
        
        
        ulInt = ((tBoolean (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[14]))[2])();

        
        
        
        g_ulUARTTxReadIndex = 0;
        g_ulUARTTxWriteIndex = 0;

        
        
        
        
        if(!ulInt)
        {
            ((tBoolean (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[14]))[1])();
        }
    }
    else
    {
        
        
        
        while(!(IsBufferEmpty(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex)))
        {
        }
    }
}























void
UARTEchoSet(tBoolean bEnable)
{
    g_bDisableEcho = !bEnable;
}















void
UARTStdioIntHandler(void)
{
    unsigned long ulInts;
    char cChar;
    long lChar;
    static tBoolean bLastWasCR = 0;

    
    
    
    ulInts = ((unsigned long (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[1]))[19])(g_ulBase, 1);
    ((void (*)(unsigned long ulBase, unsigned long ulIntFlags))((unsigned long *)(((unsigned long *)0x01000010)[1]))[20])(g_ulBase, ulInts);

    
    
    
    if(ulInts & 0x020)
    {
        
        
        
        UARTPrimeTransmit(g_ulBase);

        
        
        
        if((IsBufferEmpty(&g_ulUARTTxReadIndex, &g_ulUARTTxWriteIndex)))
        {
            ((void (*)(unsigned long ulBase, unsigned long ulIntFlags))((unsigned long *)(((unsigned long *)0x01000010)[1]))[18])(g_ulBase, 0x020);
        }
    }

    
    
    
    if(ulInts & (0x010 | 0x040))
    {
        
        
        
        while(((tBoolean (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[1]))[11])(g_ulBase))
        {
            
            
            
            lChar = ((long (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[1]))[13])(g_ulBase);
            cChar = (unsigned char)(lChar & 0xFF);

            
            
            
            
            
            if(!g_bDisableEcho)
            {
                
                
                
                if(cChar == '\b')
                {
                    
                    
                    
                    
                    if(!(IsBufferEmpty(&g_ulUARTRxReadIndex, &g_ulUARTRxWriteIndex)))
                    {
                        
                        
                        
                        UARTwrite("\b \b", 3);

                        
                        
                        
                        if(g_ulUARTRxWriteIndex == 0)
                        {
                            g_ulUARTRxWriteIndex = 128 - 1;
                        }
                        else
                        {
                            g_ulUARTRxWriteIndex--;
                        }
                    }

                    
                    
                    
                    continue;
                }

                
                
                
                
                
                
                if((cChar == '\n') && bLastWasCR)
                {
                    bLastWasCR = 0;
                    continue;
                }

                
                
                
                if((cChar == '\r') || (cChar == '\n') || (cChar == 0x1b))
                {
                    
                    
                    
                    
                    
                    if(cChar == '\r')
                    {
                        bLastWasCR = 1;
                    }

                    
                    
                    
                    
                    
                    
                    
                    cChar = '\r';
                    UARTwrite("\n", 1);
                }
            }

            
            
            
            
            if(!(IsBufferFull(&g_ulUARTRxReadIndex, &g_ulUARTRxWriteIndex, 128)))
            {
                
                
                
                g_pcUARTRxBuffer[g_ulUARTRxWriteIndex] =
                    (unsigned char)(lChar & 0xFF);
                (g_ulUARTRxWriteIndex) = ((g_ulUARTRxWriteIndex) + 1) % 128;

                
                
                
                
                if(!g_bDisableEcho)
                {
                    UARTwrite(&cChar, 1);
                }
            }
        }

        
        
        
        
        UARTPrimeTransmit(g_ulBase);
        ((void (*)(unsigned long ulBase, unsigned long ulIntFlags))((unsigned long *)(((unsigned long *)0x01000010)[1]))[17])(g_ulBase, 0x020);
    }
}








