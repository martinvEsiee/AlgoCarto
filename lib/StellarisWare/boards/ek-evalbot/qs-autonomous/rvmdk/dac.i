#line 1 "..\\drivers\\dac.c"
























#line 1 "..\\..\\..\\inc/hw_memmap.h"
















































#line 127 "..\\..\\..\\inc/hw_memmap.h"
                                            
#line 143 "..\\..\\..\\inc/hw_memmap.h"














#line 164 "..\\..\\..\\inc/hw_memmap.h"



#line 26 "..\\drivers\\dac.c"
#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 27 "..\\drivers\\dac.c"
#line 1 "..\\..\\..\\driverlib/debug.h"
















































extern void __error__(char *pcFilename, unsigned long ulLine);







#line 67 "..\\..\\..\\driverlib/debug.h"

#line 28 "..\\drivers\\dac.c"
#line 1 "..\\..\\..\\driverlib/gpio.h"



























































#line 68 "..\\..\\..\\driverlib/gpio.h"

















#line 91 "..\\..\\..\\driverlib/gpio.h"



















#line 117 "..\\..\\..\\driverlib/gpio.h"






extern void GPIODirModeSet(unsigned long ulPort, unsigned char ucPins,
                           unsigned long ulPinIO);
extern unsigned long GPIODirModeGet(unsigned long ulPort, unsigned char ucPin);
extern void GPIOIntTypeSet(unsigned long ulPort, unsigned char ucPins,
                           unsigned long ulIntType);
extern unsigned long GPIOIntTypeGet(unsigned long ulPort, unsigned char ucPin);
extern void GPIOPadConfigSet(unsigned long ulPort, unsigned char ucPins,
                             unsigned long ulStrength,
                             unsigned long ulPadType);
extern void GPIOPadConfigGet(unsigned long ulPort, unsigned char ucPin,
                             unsigned long *pulStrength,
                             unsigned long *pulPadType);
extern void GPIOPinIntEnable(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinIntDisable(unsigned long ulPort, unsigned char ucPins);
extern long GPIOPinIntStatus(unsigned long ulPort, tBoolean bMasked);
extern void GPIOPinIntClear(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPortIntRegister(unsigned long ulPort,
                                void (*pfnIntHandler)(void));
extern void GPIOPortIntUnregister(unsigned long ulPort);
extern long GPIOPinRead(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinWrite(unsigned long ulPort, unsigned char ucPins,
                         unsigned char ucVal);
extern void GPIOPinConfigure(unsigned long ulPinConfig);
extern void GPIOPinTypeADC(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeCAN(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeComparator(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeEPI(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeEthernetLED(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeEthernetMII(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeFan(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeGPIOInput(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeGPIOOutput(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeGPIOOutputOD(unsigned long ulPort,
                                    unsigned char ucPins);
extern void GPIOPinTypeI2C(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeI2CSCL(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeI2S(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeLPC(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypePECIRx(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypePECITx(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypePWM(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeQEI(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeSSI(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeTimer(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeUART(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeUSBAnalog(unsigned long ulPort, unsigned char ucPins);
extern void GPIOPinTypeUSBDigital(unsigned long ulPort, unsigned char ucPins);
extern void GPIODMATriggerEnable(unsigned long ulPort, unsigned char ucPins);
extern void GPIODMATriggerDisable(unsigned long ulPort, unsigned char ucPins);
extern void GPIOADCTriggerEnable(unsigned long ulPort, unsigned char ucPins);
extern void GPIOADCTriggerDisable(unsigned long ulPort, unsigned char ucPins);












#line 1 "..\\..\\..\\driverlib/pin_map.h"















































#line 131 "..\\..\\..\\driverlib/pin_map.h"






#line 228 "..\\..\\..\\driverlib/pin_map.h"






#line 369 "..\\..\\..\\driverlib/pin_map.h"






#line 478 "..\\..\\..\\driverlib/pin_map.h"






#line 591 "..\\..\\..\\driverlib/pin_map.h"






#line 752 "..\\..\\..\\driverlib/pin_map.h"






#line 873 "..\\..\\..\\driverlib/pin_map.h"






#line 1010 "..\\..\\..\\driverlib/pin_map.h"






#line 1139 "..\\..\\..\\driverlib/pin_map.h"






#line 1244 "..\\..\\..\\driverlib/pin_map.h"






#line 1385 "..\\..\\..\\driverlib/pin_map.h"






#line 1558 "..\\..\\..\\driverlib/pin_map.h"






#line 1671 "..\\..\\..\\driverlib/pin_map.h"






#line 1804 "..\\..\\..\\driverlib/pin_map.h"






#line 1937 "..\\..\\..\\driverlib/pin_map.h"






#line 2066 "..\\..\\..\\driverlib/pin_map.h"






#line 2203 "..\\..\\..\\driverlib/pin_map.h"






#line 2368 "..\\..\\..\\driverlib/pin_map.h"






#line 2505 "..\\..\\..\\driverlib/pin_map.h"






#line 2646 "..\\..\\..\\driverlib/pin_map.h"






#line 2743 "..\\..\\..\\driverlib/pin_map.h"






#line 2884 "..\\..\\..\\driverlib/pin_map.h"






#line 3057 "..\\..\\..\\driverlib/pin_map.h"






#line 3170 "..\\..\\..\\driverlib/pin_map.h"






#line 3315 "..\\..\\..\\driverlib/pin_map.h"






#line 3444 "..\\..\\..\\driverlib/pin_map.h"






#line 3609 "..\\..\\..\\driverlib/pin_map.h"






#line 3746 "..\\..\\..\\driverlib/pin_map.h"






#line 3887 "..\\..\\..\\driverlib/pin_map.h"






#line 3992 "..\\..\\..\\driverlib/pin_map.h"






#line 4097 "..\\..\\..\\driverlib/pin_map.h"






#line 4258 "..\\..\\..\\driverlib/pin_map.h"






#line 4431 "..\\..\\..\\driverlib/pin_map.h"






#line 4632 "..\\..\\..\\driverlib/pin_map.h"






#line 4821 "..\\..\\..\\driverlib/pin_map.h"






#line 4998 "..\\..\\..\\driverlib/pin_map.h"






#line 5131 "..\\..\\..\\driverlib/pin_map.h"






#line 5252 "..\\..\\..\\driverlib/pin_map.h"






#line 5425 "..\\..\\..\\driverlib/pin_map.h"






#line 5618 "..\\..\\..\\driverlib/pin_map.h"






#line 5775 "..\\..\\..\\driverlib/pin_map.h"






#line 5944 "..\\..\\..\\driverlib/pin_map.h"






#line 6097 "..\\..\\..\\driverlib/pin_map.h"






#line 6258 "..\\..\\..\\driverlib/pin_map.h"






#line 6443 "..\\..\\..\\driverlib/pin_map.h"






#line 6689 "..\\..\\..\\driverlib/pin_map.h"






#line 6842 "..\\..\\..\\driverlib/pin_map.h"






#line 6995 "..\\..\\..\\driverlib/pin_map.h"






#line 7148 "..\\..\\..\\driverlib/pin_map.h"






#line 7345 "..\\..\\..\\driverlib/pin_map.h"






#line 7510 "..\\..\\..\\driverlib/pin_map.h"






#line 7823 "..\\..\\..\\driverlib/pin_map.h"






#line 7984 "..\\..\\..\\driverlib/pin_map.h"






#line 8133 "..\\..\\..\\driverlib/pin_map.h"






#line 8379 "..\\..\\..\\driverlib/pin_map.h"






#line 8507 "..\\..\\..\\driverlib/pin_map.h"






#line 8684 "..\\..\\..\\driverlib/pin_map.h"






#line 8853 "..\\..\\..\\driverlib/pin_map.h"






#line 9014 "..\\..\\..\\driverlib/pin_map.h"






#line 9151 "..\\..\\..\\driverlib/pin_map.h"






#line 9296 "..\\..\\..\\driverlib/pin_map.h"






#line 9529 "..\\..\\..\\driverlib/pin_map.h"






#line 9738 "..\\..\\..\\driverlib/pin_map.h"






#line 9984 "..\\..\\..\\driverlib/pin_map.h"






#line 10230 "..\\..\\..\\driverlib/pin_map.h"






#line 10358 "..\\..\\..\\driverlib/pin_map.h"






#line 10528 "..\\..\\..\\driverlib/pin_map.h"






#line 10774 "..\\..\\..\\driverlib/pin_map.h"






#line 10902 "..\\..\\..\\driverlib/pin_map.h"






#line 11148 "..\\..\\..\\driverlib/pin_map.h"






#line 11276 "..\\..\\..\\driverlib/pin_map.h"






#line 11522 "..\\..\\..\\driverlib/pin_map.h"






#line 11692 "..\\..\\..\\driverlib/pin_map.h"






#line 11938 "..\\..\\..\\driverlib/pin_map.h"






#line 12066 "..\\..\\..\\driverlib/pin_map.h"






#line 12265 "..\\..\\..\\driverlib/pin_map.h"






#line 12385 "..\\..\\..\\driverlib/pin_map.h"






#line 12584 "..\\..\\..\\driverlib/pin_map.h"






#line 12704 "..\\..\\..\\driverlib/pin_map.h"






#line 13017 "..\\..\\..\\driverlib/pin_map.h"






#line 13263 "..\\..\\..\\driverlib/pin_map.h"






#line 13391 "..\\..\\..\\driverlib/pin_map.h"






#line 13511 "..\\..\\..\\driverlib/pin_map.h"






#line 13631 "..\\..\\..\\driverlib/pin_map.h"






#line 13736 "..\\..\\..\\driverlib/pin_map.h"






#line 13873 "..\\..\\..\\driverlib/pin_map.h"






#line 14014 "..\\..\\..\\driverlib/pin_map.h"






#line 14167 "..\\..\\..\\driverlib/pin_map.h"






#line 14280 "..\\..\\..\\driverlib/pin_map.h"






#line 14417 "..\\..\\..\\driverlib/pin_map.h"






#line 14554 "..\\..\\..\\driverlib/pin_map.h"






#line 14723 "..\\..\\..\\driverlib/pin_map.h"






#line 14900 "..\\..\\..\\driverlib/pin_map.h"






#line 15069 "..\\..\\..\\driverlib/pin_map.h"






#line 15222 "..\\..\\..\\driverlib/pin_map.h"






#line 15403 "..\\..\\..\\driverlib/pin_map.h"






#line 15548 "..\\..\\..\\driverlib/pin_map.h"






#line 15717 "..\\..\\..\\driverlib/pin_map.h"






#line 15870 "..\\..\\..\\driverlib/pin_map.h"






#line 16019 "..\\..\\..\\driverlib/pin_map.h"






#line 16132 "..\\..\\..\\driverlib/pin_map.h"






#line 16297 "..\\..\\..\\driverlib/pin_map.h"






#line 16450 "..\\..\\..\\driverlib/pin_map.h"






#line 16818 "..\\..\\..\\driverlib/pin_map.h"






#line 16995 "..\\..\\..\\driverlib/pin_map.h"






#line 17164 "..\\..\\..\\driverlib/pin_map.h"






#line 17341 "..\\..\\..\\driverlib/pin_map.h"






#line 17522 "..\\..\\..\\driverlib/pin_map.h"






#line 17743 "..\\..\\..\\driverlib/pin_map.h"






#line 17976 "..\\..\\..\\driverlib/pin_map.h"






#line 18344 "..\\..\\..\\driverlib/pin_map.h"






#line 18712 "..\\..\\..\\driverlib/pin_map.h"






#line 19080 "..\\..\\..\\driverlib/pin_map.h"






#line 19229 "..\\..\\..\\driverlib/pin_map.h"






#line 19386 "..\\..\\..\\driverlib/pin_map.h"






#line 19497 "..\\..\\..\\driverlib/pin_map.h"






#line 19706 "..\\..\\..\\driverlib/pin_map.h"






#line 19959 "..\\..\\..\\driverlib/pin_map.h"






#line 20224 "..\\..\\..\\driverlib/pin_map.h"






#line 20344 "..\\..\\..\\driverlib/pin_map.h"






#line 20464 "..\\..\\..\\driverlib/pin_map.h"






#line 20584 "..\\..\\..\\driverlib/pin_map.h"






#line 20704 "..\\..\\..\\driverlib/pin_map.h"






#line 20824 "..\\..\\..\\driverlib/pin_map.h"






#line 20973 "..\\..\\..\\driverlib/pin_map.h"






#line 21308 "..\\..\\..\\driverlib/pin_map.h"






#line 21461 "..\\..\\..\\driverlib/pin_map.h"






#line 21635 "..\\..\\..\\driverlib/pin_map.h"






#line 21788 "..\\..\\..\\driverlib/pin_map.h"






#line 21937 "..\\..\\..\\driverlib/pin_map.h"






#line 22094 "..\\..\\..\\driverlib/pin_map.h"






#line 22311 "..\\..\\..\\driverlib/pin_map.h"






#line 22468 "..\\..\\..\\driverlib/pin_map.h"






#line 22733 "..\\..\\..\\driverlib/pin_map.h"






#line 22886 "..\\..\\..\\driverlib/pin_map.h"






#line 23039 "..\\..\\..\\driverlib/pin_map.h"






#line 23438 "..\\..\\..\\driverlib/pin_map.h"






#line 23773 "..\\..\\..\\driverlib/pin_map.h"






#line 23947 "..\\..\\..\\driverlib/pin_map.h"






#line 24346 "..\\..\\..\\driverlib/pin_map.h"






#line 24671 "..\\..\\..\\driverlib/pin_map.h"






#line 24841 "..\\..\\..\\driverlib/pin_map.h"






#line 25176 "..\\..\\..\\driverlib/pin_map.h"






#line 25350 "..\\..\\..\\driverlib/pin_map.h"






#line 25685 "..\\..\\..\\driverlib/pin_map.h"






#line 25859 "..\\..\\..\\driverlib/pin_map.h"






#line 26258 "..\\..\\..\\driverlib/pin_map.h"






#line 26583 "..\\..\\..\\driverlib/pin_map.h"






#line 26753 "..\\..\\..\\driverlib/pin_map.h"






#line 27088 "..\\..\\..\\driverlib/pin_map.h"






#line 27262 "..\\..\\..\\driverlib/pin_map.h"






#line 27553 "..\\..\\..\\driverlib/pin_map.h"






#line 27711 "..\\..\\..\\driverlib/pin_map.h"






#line 28002 "..\\..\\..\\driverlib/pin_map.h"






#line 28160 "..\\..\\..\\driverlib/pin_map.h"






#line 28471 "..\\..\\..\\driverlib/pin_map.h"






#line 28806 "..\\..\\..\\driverlib/pin_map.h"






#line 28980 "..\\..\\..\\driverlib/pin_map.h"






#line 29343 "..\\..\\..\\driverlib/pin_map.h"






#line 29513 "..\\..\\..\\driverlib/pin_map.h"






#line 29671 "..\\..\\..\\driverlib/pin_map.h"






#line 30070 "..\\..\\..\\driverlib/pin_map.h"






#line 30228 "..\\..\\..\\driverlib/pin_map.h"






#line 30329 "..\\..\\..\\driverlib/pin_map.h"






#line 30458 "..\\..\\..\\driverlib/pin_map.h"






#line 30571 "..\\..\\..\\driverlib/pin_map.h"






#line 30684 "..\\..\\..\\driverlib/pin_map.h"






#line 30821 "..\\..\\..\\driverlib/pin_map.h"






#line 30982 "..\\..\\..\\driverlib/pin_map.h"






#line 31171 "..\\..\\..\\driverlib/pin_map.h"






#line 31340 "..\\..\\..\\driverlib/pin_map.h"






#line 31497 "..\\..\\..\\driverlib/pin_map.h"






#line 31622 "..\\..\\..\\driverlib/pin_map.h"






#line 31771 "..\\..\\..\\driverlib/pin_map.h"






#line 31884 "..\\..\\..\\driverlib/pin_map.h"






#line 32049 "..\\..\\..\\driverlib/pin_map.h"






#line 32182 "..\\..\\..\\driverlib/pin_map.h"






#line 32351 "..\\..\\..\\driverlib/pin_map.h"






#line 32484 "..\\..\\..\\driverlib/pin_map.h"






#line 32641 "..\\..\\..\\driverlib/pin_map.h"






#line 32794 "..\\..\\..\\driverlib/pin_map.h"






#line 33007 "..\\..\\..\\driverlib/pin_map.h"






#line 33184 "..\\..\\..\\driverlib/pin_map.h"






#line 33377 "..\\..\\..\\driverlib/pin_map.h"






#line 33537 "..\\..\\..\\driverlib/pin_map.h"






#line 33741 "..\\..\\..\\driverlib/pin_map.h"






#line 33901 "..\\..\\..\\driverlib/pin_map.h"






#line 34105 "..\\..\\..\\driverlib/pin_map.h"






#line 34234 "..\\..\\..\\driverlib/pin_map.h"






#line 34379 "..\\..\\..\\driverlib/pin_map.h"






#line 34484 "..\\..\\..\\driverlib/pin_map.h"






#line 34589 "..\\..\\..\\driverlib/pin_map.h"






#line 34734 "..\\..\\..\\driverlib/pin_map.h"






#line 34891 "..\\..\\..\\driverlib/pin_map.h"






#line 34996 "..\\..\\..\\driverlib/pin_map.h"






#line 35141 "..\\..\\..\\driverlib/pin_map.h"






#line 35314 "..\\..\\..\\driverlib/pin_map.h"






#line 35483 "..\\..\\..\\driverlib/pin_map.h"






#line 35620 "..\\..\\..\\driverlib/pin_map.h"






#line 35777 "..\\..\\..\\driverlib/pin_map.h"






#line 35975 "..\\..\\..\\driverlib/pin_map.h"






#line 36173 "..\\..\\..\\driverlib/pin_map.h"






#line 36466 "..\\..\\..\\driverlib/pin_map.h"






#line 36738 "..\\..\\..\\driverlib/pin_map.h"






#line 37099 "..\\..\\..\\driverlib/pin_map.h"






#line 37485 "..\\..\\..\\driverlib/pin_map.h"






#line 37788 "..\\..\\..\\driverlib/pin_map.h"






#line 38081 "..\\..\\..\\driverlib/pin_map.h"






#line 38353 "..\\..\\..\\driverlib/pin_map.h"






#line 38714 "..\\..\\..\\driverlib/pin_map.h"






#line 39075 "..\\..\\..\\driverlib/pin_map.h"


































#line 39116 "..\\..\\..\\driverlib/pin_map.h"

#line 39125 "..\\..\\..\\driverlib/pin_map.h"



























#line 39160 "..\\..\\..\\driverlib/pin_map.h"

#line 39168 "..\\..\\..\\driverlib/pin_map.h"














#line 39189 "..\\..\\..\\driverlib/pin_map.h"

#line 39197 "..\\..\\..\\driverlib/pin_map.h"

#line 39206 "..\\..\\..\\driverlib/pin_map.h"

#line 39214 "..\\..\\..\\driverlib/pin_map.h"

#line 39223 "..\\..\\..\\driverlib/pin_map.h"

#line 39234 "..\\..\\..\\driverlib/pin_map.h"






























#line 39270 "..\\..\\..\\driverlib/pin_map.h"







#line 39283 "..\\..\\..\\driverlib/pin_map.h"

#line 39290 "..\\..\\..\\driverlib/pin_map.h"

#line 39297 "..\\..\\..\\driverlib/pin_map.h"
























#line 39327 "..\\..\\..\\driverlib/pin_map.h"






















#line 39355 "..\\..\\..\\driverlib/pin_map.h"























































































#line 39871 "..\\..\\..\\driverlib/pin_map.h"






#line 40306 "..\\..\\..\\driverlib/pin_map.h"






#line 40741 "..\\..\\..\\driverlib/pin_map.h"






#line 41044 "..\\..\\..\\driverlib/pin_map.h"






#line 41479 "..\\..\\..\\driverlib/pin_map.h"






#line 41772 "..\\..\\..\\driverlib/pin_map.h"






#line 42044 "..\\..\\..\\driverlib/pin_map.h"






#line 42405 "..\\..\\..\\driverlib/pin_map.h"






#line 42766 "..\\..\\..\\driverlib/pin_map.h"






#line 43127 "..\\..\\..\\driverlib/pin_map.h"






#line 43562 "..\\..\\..\\driverlib/pin_map.h"






#line 43997 "..\\..\\..\\driverlib/pin_map.h"






#line 44300 "..\\..\\..\\driverlib/pin_map.h"






#line 44735 "..\\..\\..\\driverlib/pin_map.h"






#line 45121 "..\\..\\..\\driverlib/pin_map.h"






#line 45424 "..\\..\\..\\driverlib/pin_map.h"






#line 45717 "..\\..\\..\\driverlib/pin_map.h"






#line 45989 "..\\..\\..\\driverlib/pin_map.h"






#line 46350 "..\\..\\..\\driverlib/pin_map.h"






#line 46711 "..\\..\\..\\driverlib/pin_map.h"






#line 47072 "..\\..\\..\\driverlib/pin_map.h"






#line 47222 "..\\..\\..\\driverlib/pin_map.h"






#line 47372 "..\\..\\..\\driverlib/pin_map.h"






#line 47522 "..\\..\\..\\driverlib/pin_map.h"






#line 47672 "..\\..\\..\\driverlib/pin_map.h"






#line 47844 "..\\..\\..\\driverlib/pin_map.h"






#line 48016 "..\\..\\..\\driverlib/pin_map.h"






#line 48188 "..\\..\\..\\driverlib/pin_map.h"






#line 48360 "..\\..\\..\\driverlib/pin_map.h"






#line 48589 "..\\..\\..\\driverlib/pin_map.h"






#line 48818 "..\\..\\..\\driverlib/pin_map.h"






#line 49047 "..\\..\\..\\driverlib/pin_map.h"






#line 49361 "..\\..\\..\\driverlib/pin_map.h"






#line 49511 "..\\..\\..\\driverlib/pin_map.h"






#line 49661 "..\\..\\..\\driverlib/pin_map.h"






#line 49811 "..\\..\\..\\driverlib/pin_map.h"






#line 49961 "..\\..\\..\\driverlib/pin_map.h"






#line 50133 "..\\..\\..\\driverlib/pin_map.h"






#line 50305 "..\\..\\..\\driverlib/pin_map.h"






#line 50477 "..\\..\\..\\driverlib/pin_map.h"






#line 50649 "..\\..\\..\\driverlib/pin_map.h"






#line 50878 "..\\..\\..\\driverlib/pin_map.h"






#line 51107 "..\\..\\..\\driverlib/pin_map.h"






#line 51336 "..\\..\\..\\driverlib/pin_map.h"






#line 51650 "..\\..\\..\\driverlib/pin_map.h"






#line 51805 "..\\..\\..\\driverlib/pin_map.h"






#line 51960 "..\\..\\..\\driverlib/pin_map.h"






#line 52115 "..\\..\\..\\driverlib/pin_map.h"






#line 52294 "..\\..\\..\\driverlib/pin_map.h"






#line 52473 "..\\..\\..\\driverlib/pin_map.h"






#line 52652 "..\\..\\..\\driverlib/pin_map.h"






#line 52889 "..\\..\\..\\driverlib/pin_map.h"






#line 53126 "..\\..\\..\\driverlib/pin_map.h"






#line 53363 "..\\..\\..\\driverlib/pin_map.h"






#line 53685 "..\\..\\..\\driverlib/pin_map.h"






#line 53870 "..\\..\\..\\driverlib/pin_map.h"






#line 54055 "..\\..\\..\\driverlib/pin_map.h"






#line 54240 "..\\..\\..\\driverlib/pin_map.h"






#line 54425 "..\\..\\..\\driverlib/pin_map.h"






#line 54650 "..\\..\\..\\driverlib/pin_map.h"






#line 54875 "..\\..\\..\\driverlib/pin_map.h"






#line 55100 "..\\..\\..\\driverlib/pin_map.h"






#line 55325 "..\\..\\..\\driverlib/pin_map.h"






#line 55633 "..\\..\\..\\driverlib/pin_map.h"






#line 55941 "..\\..\\..\\driverlib/pin_map.h"






#line 56398 "..\\..\\..\\driverlib/pin_map.h"






#line 56706 "..\\..\\..\\driverlib/pin_map.h"






#line 57114 "..\\..\\..\\driverlib/pin_map.h"






#line 57304 "..\\..\\..\\driverlib/pin_map.h"






#line 57494 "..\\..\\..\\driverlib/pin_map.h"






#line 57726 "..\\..\\..\\driverlib/pin_map.h"






#line 57958 "..\\..\\..\\driverlib/pin_map.h"






#line 58274 "..\\..\\..\\driverlib/pin_map.h"






#line 58739 "..\\..\\..\\driverlib/pin_map.h"






#line 59055 "..\\..\\..\\driverlib/pin_map.h"






#line 59471 "..\\..\\..\\driverlib/pin_map.h"






#line 59781 "..\\..\\..\\driverlib/pin_map.h"






#line 60126 "..\\..\\..\\driverlib/pin_map.h"






#line 60471 "..\\..\\..\\driverlib/pin_map.h"






#line 60962 "..\\..\\..\\driverlib/pin_map.h"






#line 61258 "..\\..\\..\\driverlib/pin_map.h"






#line 61554 "..\\..\\..\\driverlib/pin_map.h"

































































































































































































































































#line 188 "..\\..\\..\\driverlib/gpio.h"











#line 29 "..\\drivers\\dac.c"
#line 1 "..\\..\\..\\driverlib/i2c.h"








































































#line 99 "..\\..\\..\\driverlib/i2c.h"

















#line 123 "..\\..\\..\\driverlib/i2c.h"
                                





























extern void I2CIntRegister(unsigned long ulBase, void(fnHandler)(void));
extern void I2CIntUnregister(unsigned long ulBase);
extern tBoolean I2CMasterBusBusy(unsigned long ulBase);
extern tBoolean I2CMasterBusy(unsigned long ulBase);
extern void I2CMasterControl(unsigned long ulBase, unsigned long ulCmd);
extern unsigned long I2CMasterDataGet(unsigned long ulBase);
extern void I2CMasterDataPut(unsigned long ulBase, unsigned char ucData);
extern void I2CMasterDisable(unsigned long ulBase);
extern void I2CMasterEnable(unsigned long ulBase);
extern unsigned long I2CMasterErr(unsigned long ulBase);
extern void I2CMasterInitExpClk(unsigned long ulBase, unsigned long ulI2CClk,
                                tBoolean bFast);
extern void I2CMasterIntClear(unsigned long ulBase);
extern void I2CMasterIntDisable(unsigned long ulBase);
extern void I2CMasterIntEnable(unsigned long ulBase);
extern tBoolean I2CMasterIntStatus(unsigned long ulBase, tBoolean bMasked);
extern void I2CMasterIntEnableEx(unsigned long ulBase,
                                 unsigned long ulIntFlags);
extern void I2CMasterIntDisableEx(unsigned long ulBase,
                                  unsigned long ulIntFlags);
extern unsigned long I2CMasterIntStatusEx(unsigned long ulBase,
                                          tBoolean bMasked);
extern void I2CMasterIntClearEx(unsigned long ulBase,
                                unsigned long ulIntFlags);
extern void I2CMasterTimeoutSet(unsigned long ulBase, unsigned long ulValue);
extern void I2CSlaveACKOverride(unsigned long ulBase, tBoolean bEnable);
extern void I2CSlaveACKValueSet(unsigned long ulBase, tBoolean bACK);
extern unsigned long I2CMasterLineStateGet(unsigned long ulBase);
extern void I2CMasterSlaveAddrSet(unsigned long ulBase,
                                  unsigned char ucSlaveAddr,
                                  tBoolean bReceive);
extern unsigned long I2CSlaveDataGet(unsigned long ulBase);
extern void I2CSlaveDataPut(unsigned long ulBase, unsigned char ucData);
extern void I2CSlaveDisable(unsigned long ulBase);
extern void I2CSlaveEnable(unsigned long ulBase);
extern void I2CSlaveInit(unsigned long ulBase, unsigned char ucSlaveAddr);
extern void I2CSlaveAddressSet(unsigned long ulBase, unsigned char ucAddrNum,
                               unsigned char ucSlaveAddr);
extern void I2CSlaveIntClear(unsigned long ulBase);
extern void I2CSlaveIntDisable(unsigned long ulBase);
extern void I2CSlaveIntEnable(unsigned long ulBase);
extern void I2CSlaveIntClearEx(unsigned long ulBase, unsigned long ulIntFlags);
extern void I2CSlaveIntDisableEx(unsigned long ulBase,
                                 unsigned long ulIntFlags);
extern void I2CSlaveIntEnableEx(unsigned long ulBase, unsigned long ulIntFlags);
extern tBoolean I2CSlaveIntStatus(unsigned long ulBase, tBoolean bMasked);
extern unsigned long I2CSlaveIntStatusEx(unsigned long ulBase,
                                         tBoolean bMasked);
extern unsigned long I2CSlaveStatus(unsigned long ulBase);







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










#line 211 "..\\..\\..\\driverlib/i2c.h"













#line 30 "..\\drivers\\dac.c"
#line 31 "..\\drivers\\dac.c"
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

#line 32 "..\\drivers\\dac.c"
#line 33 "..\\drivers\\dac.c"
#line 1 "..\\drivers\\dac.h"











































#line 83 "..\\drivers\\dac.h"

#line 110 "..\\drivers\\dac.h"





#line 131 "..\\drivers\\dac.h"
                                        




#line 143 "..\\drivers\\dac.h"
                                        

                                        














extern tBoolean DACInit(void);
extern void DACVolumeSet(unsigned long ulVolume);
extern unsigned long DACVolumeGet(void);
extern void  DACClassDEn(void);
extern void  DACClassDDis(void);










#line 34 "..\\drivers\\dac.c"
































static unsigned char g_ucHPVolume = 100;















static tBoolean
DACWriteRegister(unsigned char ucRegister, unsigned long ulData)
{
    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucSlaveAddr, tBoolean bReceive))((unsigned long *)(((unsigned long *)0x01000010)[3]))[15])(0x40020000, 0x018,
                              0);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[3]))[0])(0x40020000, ucRegister);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40020000, 0x00000003);

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0) == 0)
    {
    }

    if(((unsigned long (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[19])(0x40020000) != 0)
    {
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40020000);
        return(0);
    }

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0))
    {
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40020000);
    }

    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[3]))[0])(0x40020000, ulData);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40020000, 0x00000005);

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0) == 0)
    {
    }

    if(((unsigned long (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[19])(0x40020000) != 0)
    {
        return(0);
    }

    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0))
    {
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40020000);
    }

    return(1);
}











static tBoolean
DACReadRegister(unsigned char ucRegister, unsigned char *pucData)
{
    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucSlaveAddr, tBoolean bReceive))((unsigned long *)(((unsigned long *)0x01000010)[3]))[15])(0x40020000, 0x018,
                              0);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[3]))[0])(0x40020000, ucRegister);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40020000, 0x00000003);

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0) == 0)
    {
    }

    if(((unsigned long (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[19])(0x40020000) != 0)
    {
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40020000);
        return(0);
    }

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0))
    {
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40020000);
    }

    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucSlaveAddr, tBoolean bReceive))((unsigned long *)(((unsigned long *)0x01000010)[3]))[15])(0x40020000, 0x018, 1);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40020000, 0x00000007);

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0) == 0)
    {
    }

    if(((unsigned long (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[19])(0x40020000) != 0)
    {
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40020000);
        return(0);
    }

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40020000, 0))
    {
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40020000);
    }

    
    
    
    *pucData  = ((unsigned long (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[20])(0x40020000);

    return(1);
}











tBoolean
DACInit(void)
{
    tBoolean bRetcode;
    unsigned char ucTest;

    
    
    
    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000002);
    ((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[14])(0x40005000, 0x00000008);
    ((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned long ulStrength, unsigned long ulPadType))((unsigned long *)(((unsigned long *)0x01000010)[4]))[5])(0x40005000, 0x00000008,
                         0x00000001, 0x0000000C);

    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x10001000);

    
    
    
    
    
    SysCtlDelay(((unsigned long (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[13]))[24])() / (3 * 500));

    
    
    
    GPIOPinConfigure(0x00010801);
    GPIOPinConfigure(0x00010C01);

    
    
    
    ((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[16])(0x40005000, 0x00000004 | 0x00000008);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulI2CClk, tBoolean bFast))((unsigned long *)(((unsigned long *)0x01000010)[3]))[1])(0x40020000, SysCtlClockGet(), 0);

    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000001);

    
    
    
    ((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[15])(0x40004000, 0x00000080);

    
    
    
    ((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal))((unsigned long *)(((unsigned long *)0x01000010)[4]))[0])(0x40004000 , 0x00000080, 0);
    ((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal))((unsigned long *)(((unsigned long *)0x01000010)[4]))[0])(0x40004000 , 0x00000080, 0x00000080);

    
    
    
    
    
    
    bRetcode = DACWriteRegister(1, 0x80);
    if(!bRetcode)
    {
        return(bRetcode);
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    DACWriteRegister(7, 0x98);

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    DACWriteRegister(8, 0x00);

    
    
    
    
    
    
    
    
    
    
    
    
    
    DACWriteRegister(9, 0x00);

    
    
    
    
    
    
    
    DACWriteRegister(10, 0x00);

    
    
    
    
    
    
    
    
    
    
    DACWriteRegister(37, 0xC0);

    
    
    
    
    
    
    
    
    DACWriteRegister(43, 0x00);

    
    
    
    
    
    
    
    
    DACWriteRegister(44, 0x00);

    
    
    
    
    
    
    
    
    DACWriteRegister(82, 0xA0);

    
    
    
    
    
    
    
    
    
    
    
    DACWriteRegister(86, 0xC9);

    
    
    
    
    
    
    
    
    
    
    
    
    DACWriteRegister(0x00, 0x0D);
    DACWriteRegister(0x0D, 0x0D);
    DACWriteRegister(0x08, 0x5C);
    DACWriteRegister(0x08, 0x5D);
    DACWriteRegister(0x08, 0x5C);
    DACWriteRegister(0x00, 0x00);

    
    
    
    
    
    
    
    
    
    
    
    
    DACWriteRegister(73, 0x40);

    
    
    
    bRetcode = DACReadRegister(94, &ucTest);
    if(!bRetcode)
    {
        return(bRetcode);
    }

    return(1);
}














void
DACVolumeSet(unsigned long ulVolume)
{
    
    
    
    ;

    
    
    
    g_ucHPVolume = (unsigned char)ulVolume;

    
    
    
    if(g_ucHPVolume >= 100)
    {
        g_ucHPVolume = 100;
    }

    
    
    
    
    ulVolume = 100 - ulVolume;

    
    
    
    ulVolume = (0x7F * ulVolume) / 100;

    
    
    
    
    
    
    
    
    DACWriteRegister(82,
                     (0x80 | (unsigned char)ulVolume));
}












unsigned long
DACVolumeGet(void)
{
    return(g_ucHPVolume);
}










void
DACClassDEn(void)
{
    DACWriteRegister(73, 0x48);
}










void
DACClassDDis(void)
{
    DACWriteRegister(73, 0x40);
}







