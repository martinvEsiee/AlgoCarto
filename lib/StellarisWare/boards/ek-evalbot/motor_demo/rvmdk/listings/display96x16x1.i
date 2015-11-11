#line 1 "..\\drivers\\display96x16x1.c"
































#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
 
 
 
 




 








 











#line 37 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"


  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 184 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 200 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 223 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 238 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 261 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 493 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"



 
#line 34 "..\\drivers\\display96x16x1.c"
#line 1 "..\\..\\..\\inc/hw_i2c.h"















































#line 60 "..\\..\\..\\inc/hw_i2c.h"
                                            


                                            





                                            

























#line 102 "..\\..\\..\\inc/hw_i2c.h"






#line 122 "..\\..\\..\\inc/hw_i2c.h"









































                                            

                                            
















                                            








                                            

                                            

















                                            














































































































#line 331 "..\\..\\..\\inc/hw_i2c.h"






#line 344 "..\\..\\..\\inc/hw_i2c.h"

















#line 373 "..\\..\\..\\inc/hw_i2c.h"












































































































#line 35 "..\\drivers\\display96x16x1.c"
#line 1 "..\\..\\..\\inc/hw_memmap.h"
















































#line 127 "..\\..\\..\\inc/hw_memmap.h"
                                            
#line 143 "..\\..\\..\\inc/hw_memmap.h"














#line 164 "..\\..\\..\\inc/hw_memmap.h"



#line 36 "..\\drivers\\display96x16x1.c"
#line 1 "..\\..\\..\\inc/hw_sysctl.h"















































#line 59 "..\\..\\..\\inc/hw_sysctl.h"
                                            
#line 68 "..\\..\\..\\inc/hw_sysctl.h"
                                            




                                            



                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            



                                            


                                            

                                            





                                            


                                            


                                            

                                            


                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
#line 147 "..\\..\\..\\inc/hw_sysctl.h"
                                            

                                            


                                            
                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            

                                            




                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            



                                            

                                            


                                            
                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            

                                            
#line 339 "..\\..\\..\\inc/hw_sysctl.h"
                                            

                                            


                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            











                                            
                                            

                                            
#line 387 "..\\..\\..\\inc/hw_sysctl.h"
                                            


                                            


                                            


                                            



                                            

                                            


                                            













                                            
                                            

                                            



                                            
                                            
                                            
#line 770 "..\\..\\..\\inc/hw_sysctl.h"
                                            

                                            

                                            
#line 786 "..\\..\\..\\inc/hw_sysctl.h"






#line 818 "..\\..\\..\\inc/hw_sysctl.h"






#line 836 "..\\..\\..\\inc/hw_sysctl.h"
                                            

                                            

                                            

                                            

                                            
#line 863 "..\\..\\..\\inc/hw_sysctl.h"






#line 889 "..\\..\\..\\inc/hw_sysctl.h"






#line 926 "..\\..\\..\\inc/hw_sysctl.h"






#line 950 "..\\..\\..\\inc/hw_sysctl.h"






#line 970 "..\\..\\..\\inc/hw_sysctl.h"

















#line 1033 "..\\..\\..\\inc/hw_sysctl.h"






#line 1071 "..\\..\\..\\inc/hw_sysctl.h"
















#line 1099 "..\\..\\..\\inc/hw_sysctl.h"






#line 1114 "..\\..\\..\\inc/hw_sysctl.h"






#line 1138 "..\\..\\..\\inc/hw_sysctl.h"






#line 1157 "..\\..\\..\\inc/hw_sysctl.h"







                                            

                                            


                                            

                                            

                                            

                                            

                                            












                                            

                                            

                                            









                                            

                                            


                                            

                                            

                                            

                                            







#line 1231 "..\\..\\..\\inc/hw_sysctl.h"






#line 1301 "..\\..\\..\\inc/hw_sysctl.h"
                                            

                                            
#line 1310 "..\\..\\..\\inc/hw_sysctl.h"






#line 1324 "..\\..\\..\\inc/hw_sysctl.h"








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            








                                            
#line 1434 "..\\..\\..\\inc/hw_sysctl.h"















#line 1479 "..\\..\\..\\inc/hw_sysctl.h"






#line 1503 "..\\..\\..\\inc/hw_sysctl.h"






#line 1522 "..\\..\\..\\inc/hw_sysctl.h"






#line 1558 "..\\..\\..\\inc/hw_sysctl.h"






#line 1582 "..\\..\\..\\inc/hw_sysctl.h"






#line 1601 "..\\..\\..\\inc/hw_sysctl.h"






#line 1616 "..\\..\\..\\inc/hw_sysctl.h"






#line 1640 "..\\..\\..\\inc/hw_sysctl.h"






#line 1659 "..\\..\\..\\inc/hw_sysctl.h"







#line 1740 "..\\..\\..\\inc/hw_sysctl.h"




































                                            

                                            

                                            














































#line 1837 "..\\..\\..\\inc/hw_sysctl.h"






#line 1859 "..\\..\\..\\inc/hw_sysctl.h"








                                            














#line 1888 "..\\..\\..\\inc/hw_sysctl.h"






#line 1909 "..\\..\\..\\inc/hw_sysctl.h"




















#line 1937 "..\\..\\..\\inc/hw_sysctl.h"
















#line 1959 "..\\..\\..\\inc/hw_sysctl.h"


















































































#line 2047 "..\\..\\..\\inc/hw_sysctl.h"














#line 2067 "..\\..\\..\\inc/hw_sysctl.h"






#line 2088 "..\\..\\..\\inc/hw_sysctl.h"














                                            






#line 2117 "..\\..\\..\\inc/hw_sysctl.h"
















#line 2139 "..\\..\\..\\inc/hw_sysctl.h"






























                                            




















































#line 2228 "..\\..\\..\\inc/hw_sysctl.h"







                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            

                                            







                                            

                                            








                                            







                                            

                                            







                                            

                                            







                                            








                                            







                                            








                                            








                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            

                                            







                                            

                                            








                                            







                                            

                                            







                                            

                                            







                                            








                                            







                                            








                                            








                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            

                                            







                                            

                                            








                                            
                                            







                                            

                                            







                                            

                                            







                                            








                                            







                                            








                                            








                                            

                                            

                                            

                                            

                                            

                                            














#line 2990 "..\\..\\..\\inc/hw_sysctl.h"






#line 3011 "..\\..\\..\\inc/hw_sysctl.h"




















#line 3039 "..\\..\\..\\inc/hw_sysctl.h"
















#line 3061 "..\\..\\..\\inc/hw_sysctl.h"






























                                            




















































#line 3150 "..\\..\\..\\inc/hw_sysctl.h"







                                            

                                            






#line 3172 "..\\..\\..\\inc/hw_sysctl.h"






#line 3193 "..\\..\\..\\inc/hw_sysctl.h"














                                            






#line 3222 "..\\..\\..\\inc/hw_sysctl.h"
















#line 3244 "..\\..\\..\\inc/hw_sysctl.h"






























                                            




















































#line 3333 "..\\..\\..\\inc/hw_sysctl.h"
























#line 3364 "..\\..\\..\\inc/hw_sysctl.h"







#line 3382 "..\\..\\..\\inc/hw_sysctl.h"
















#line 3409 "..\\..\\..\\inc/hw_sysctl.h"

















#line 3435 "..\\..\\..\\inc/hw_sysctl.h"











































#line 3491 "..\\..\\..\\inc/hw_sysctl.h"



















#line 3518 "..\\..\\..\\inc/hw_sysctl.h"









































































#line 3603 "..\\..\\..\\inc/hw_sysctl.h"







#line 3629 "..\\..\\..\\inc/hw_sysctl.h"







#line 3645 "..\\..\\..\\inc/hw_sysctl.h"







#line 3659 "..\\..\\..\\inc/hw_sysctl.h"



#line 37 "..\\drivers\\display96x16x1.c"
#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 38 "..\\drivers\\display96x16x1.c"
#line 1 "..\\..\\..\\driverlib/debug.h"
















































extern void __error__(char *pcFilename, unsigned long ulLine);







#line 67 "..\\..\\..\\driverlib/debug.h"

#line 39 "..\\drivers\\display96x16x1.c"
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











#line 40 "..\\drivers\\display96x16x1.c"
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













#line 41 "..\\drivers\\display96x16x1.c"
#line 42 "..\\drivers\\display96x16x1.c"
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

#line 43 "..\\drivers\\display96x16x1.c"
#line 44 "..\\drivers\\display96x16x1.c"
#line 1 "..\\drivers/display96x16x1.h"
























































extern void Display96x16x1Clear(void);
extern void Display96x16x1ClearLine(unsigned long ulY);
extern void Display96x16x1StringDraw(const char *pcStr, unsigned long ulX,
                                   unsigned long ulY);
extern void Display96x16x1StringDrawLen(const char *pcStr, unsigned long ulLen,
                                        unsigned long ulX, unsigned long ulY);
extern void Display96x16x1StringDrawCentered(const char *pcStr,
                                             unsigned long ulY,
                                             tBoolean bClear);
extern void Display96x16x1ImageDraw(const unsigned char *pucImage,
                                  unsigned long ulX, unsigned long ulY,
                                  unsigned long ulWidth,
                                  unsigned long ulHeight);
extern void Display96x16x1Init(tBoolean bFast);
extern void Display96x16x1DisplayOn(void);
extern void Display96x16x1DisplayOff(void);

#line 45 "..\\drivers\\display96x16x1.c"
















static const unsigned char g_pucFont[95][5] =
{
    { 0x00, 0x00, 0x00, 0x00, 0x00 }, 
    { 0x00, 0x00, 0x4f, 0x00, 0x00 }, 
    { 0x00, 0x07, 0x00, 0x07, 0x00 }, 
    { 0x14, 0x7f, 0x14, 0x7f, 0x14 }, 
    { 0x24, 0x2a, 0x7f, 0x2a, 0x12 }, 
    { 0x23, 0x13, 0x08, 0x64, 0x62 }, 
    { 0x36, 0x49, 0x55, 0x22, 0x50 }, 
    { 0x00, 0x05, 0x03, 0x00, 0x00 }, 
    { 0x00, 0x1c, 0x22, 0x41, 0x00 }, 
    { 0x00, 0x41, 0x22, 0x1c, 0x00 }, 
    { 0x14, 0x08, 0x3e, 0x08, 0x14 }, 
    { 0x08, 0x08, 0x3e, 0x08, 0x08 }, 
    { 0x00, 0x50, 0x30, 0x00, 0x00 }, 
    { 0x08, 0x08, 0x08, 0x08, 0x08 }, 
    { 0x00, 0x60, 0x60, 0x00, 0x00 }, 
    { 0x20, 0x10, 0x08, 0x04, 0x02 }, 
    { 0x3e, 0x51, 0x49, 0x45, 0x3e }, 
    { 0x00, 0x42, 0x7f, 0x40, 0x00 }, 
    { 0x42, 0x61, 0x51, 0x49, 0x46 }, 
    { 0x21, 0x41, 0x45, 0x4b, 0x31 }, 
    { 0x18, 0x14, 0x12, 0x7f, 0x10 }, 
    { 0x27, 0x45, 0x45, 0x45, 0x39 }, 
    { 0x3c, 0x4a, 0x49, 0x49, 0x30 }, 
    { 0x01, 0x71, 0x09, 0x05, 0x03 }, 
    { 0x36, 0x49, 0x49, 0x49, 0x36 }, 
    { 0x06, 0x49, 0x49, 0x29, 0x1e }, 
    { 0x00, 0x36, 0x36, 0x00, 0x00 }, 
    { 0x00, 0x56, 0x36, 0x00, 0x00 }, 
    { 0x08, 0x14, 0x22, 0x41, 0x00 }, 
    { 0x14, 0x14, 0x14, 0x14, 0x14 }, 
    { 0x00, 0x41, 0x22, 0x14, 0x08 }, 
    { 0x02, 0x01, 0x51, 0x09, 0x06 }, 
    { 0x32, 0x49, 0x79, 0x41, 0x3e }, 
    { 0x7e, 0x11, 0x11, 0x11, 0x7e }, 
    { 0x7f, 0x49, 0x49, 0x49, 0x36 }, 
    { 0x3e, 0x41, 0x41, 0x41, 0x22 }, 
    { 0x7f, 0x41, 0x41, 0x22, 0x1c }, 
    { 0x7f, 0x49, 0x49, 0x49, 0x41 }, 
    { 0x7f, 0x09, 0x09, 0x09, 0x01 }, 
    { 0x3e, 0x41, 0x49, 0x49, 0x7a }, 
    { 0x7f, 0x08, 0x08, 0x08, 0x7f }, 
    { 0x00, 0x41, 0x7f, 0x41, 0x00 }, 
    { 0x20, 0x40, 0x41, 0x3f, 0x01 }, 
    { 0x7f, 0x08, 0x14, 0x22, 0x41 }, 
    { 0x7f, 0x40, 0x40, 0x40, 0x40 }, 
    { 0x7f, 0x02, 0x0c, 0x02, 0x7f }, 
    { 0x7f, 0x04, 0x08, 0x10, 0x7f }, 
    { 0x3e, 0x41, 0x41, 0x41, 0x3e }, 
    { 0x7f, 0x09, 0x09, 0x09, 0x06 }, 
    { 0x3e, 0x41, 0x51, 0x21, 0x5e }, 
    { 0x7f, 0x09, 0x19, 0x29, 0x46 }, 
    { 0x46, 0x49, 0x49, 0x49, 0x31 }, 
    { 0x01, 0x01, 0x7f, 0x01, 0x01 }, 
    { 0x3f, 0x40, 0x40, 0x40, 0x3f }, 
    { 0x1f, 0x20, 0x40, 0x20, 0x1f }, 
    { 0x3f, 0x40, 0x38, 0x40, 0x3f }, 
    { 0x63, 0x14, 0x08, 0x14, 0x63 }, 
    { 0x07, 0x08, 0x70, 0x08, 0x07 }, 
    { 0x61, 0x51, 0x49, 0x45, 0x43 }, 
    { 0x00, 0x7f, 0x41, 0x41, 0x00 }, 
    { 0x02, 0x04, 0x08, 0x10, 0x20 }, 
    { 0x00, 0x41, 0x41, 0x7f, 0x00 }, 
    { 0x04, 0x02, 0x01, 0x02, 0x04 }, 
    { 0x40, 0x40, 0x40, 0x40, 0x40 }, 
    { 0x00, 0x01, 0x02, 0x04, 0x00 }, 
    { 0x20, 0x54, 0x54, 0x54, 0x78 }, 
    { 0x7f, 0x48, 0x44, 0x44, 0x38 }, 
    { 0x38, 0x44, 0x44, 0x44, 0x20 }, 
    { 0x38, 0x44, 0x44, 0x48, 0x7f }, 
    { 0x38, 0x54, 0x54, 0x54, 0x18 }, 
    { 0x08, 0x7e, 0x09, 0x01, 0x02 }, 
    { 0x0c, 0x52, 0x52, 0x52, 0x3e }, 
    { 0x7f, 0x08, 0x04, 0x04, 0x78 }, 
    { 0x00, 0x44, 0x7d, 0x40, 0x00 }, 
    { 0x20, 0x40, 0x44, 0x3d, 0x00 }, 
    { 0x7f, 0x10, 0x28, 0x44, 0x00 }, 
    { 0x00, 0x41, 0x7f, 0x40, 0x00 }, 
    { 0x7c, 0x04, 0x18, 0x04, 0x78 }, 
    { 0x7c, 0x08, 0x04, 0x04, 0x78 }, 
    { 0x38, 0x44, 0x44, 0x44, 0x38 }, 
    { 0x7c, 0x14, 0x14, 0x14, 0x08 }, 
    { 0x08, 0x14, 0x14, 0x18, 0x7c }, 
    { 0x7c, 0x08, 0x04, 0x04, 0x08 }, 
    { 0x48, 0x54, 0x54, 0x54, 0x20 }, 
    { 0x04, 0x3f, 0x44, 0x40, 0x20 }, 
    { 0x3c, 0x40, 0x40, 0x20, 0x7c }, 
    { 0x1c, 0x20, 0x40, 0x20, 0x1c }, 
    { 0x3c, 0x40, 0x30, 0x40, 0x3c }, 
    { 0x44, 0x28, 0x10, 0x28, 0x44 }, 
    { 0x0c, 0x50, 0x50, 0x50, 0x3c }, 
    { 0x44, 0x64, 0x54, 0x4c, 0x44 }, 
    { 0x00, 0x08, 0x36, 0x41, 0x00 }, 
    { 0x00, 0x00, 0x7f, 0x00, 0x00 }, 
    { 0x00, 0x41, 0x36, 0x08, 0x00 }, 
    { 0x02, 0x01, 0x02, 0x04, 0x02 }, 
};







static const unsigned char g_pucRITInit[] =
{
    
    
    
    0x08, 0x80, 0xae,

    
    
    
    0x80, 0xad, 0x80, 0x8a, 0x80, 0xe3,

    
    
    
    0x06, 0x80, 0xa8, 0x80, 0x1f, 0x80, 0xe3,

    
    
    
    0x1e, 0x80, 0xc8,

    
    
    
    0x80, 0xa0,

    
    
    
    0x80, 0xd8,

    
    
    
    0x80, 0x05,

    
    
    
    0x80, 0x40,

    
    
    
    0x80, 0x81, 0x80, 0x5d,

    
    
    
    0x80, 0xd9, 0x80, 0x11,

    
    
    
    0x80, 0xd5, 0x80, 0x01,

    
    
    
    0x80, 0xd3, 0x80, 0x00,

    
    
    
    0x80, 0xaf, 0x80, 0xe3,
};







static const unsigned char g_pucRITRow1[] =
{
    0xb0, 0x80, 0x04, 0x80, 0x10, 0x40
};
static const unsigned char g_pucRITRow2[] =
{
    0xb1, 0x80, 0x04, 0x80, 0x10, 0x40
};
















static void
Display96x16x1WriteFirst(unsigned char ucChar)
{
    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucSlaveAddr, tBoolean bReceive))((unsigned long *)(((unsigned long *)0x01000010)[3]))[15])(0x40021000, 0x3c, 0);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[3]))[0])(0x40021000, ucChar);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40021000, 0x00000003);
}



















static void
Display96x16x1WriteByte(unsigned char ucChar)
{
    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40021000, 0) == 0)
    {
    }

    
    
    
    ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40021000);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[3]))[0])(0x40021000, ucChar);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40021000, 0x00000001);
}

















static void
Display96x16x1WriteArray(const unsigned char *pucBuffer, unsigned long ulCount)
{
    
    
    
    while(ulCount != 0)
    {
        
        
        
        while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40021000, 0) == 0)
        {
        }

        
        
        
        ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40021000);

        
        
        
        ((void (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[3]))[0])(0x40021000, *pucBuffer++);
        ulCount--;

        
        
        
        ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40021000, 0x00000001);
    }
}


















static void
Display96x16x1WriteFinal(unsigned char ucChar)
{
    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40021000, 0) == 0)
    {
    }

    
    
    
    ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40021000);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned char ucData))((unsigned long *)(((unsigned long *)0x01000010)[3]))[0])(0x40021000, ucChar);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulCmd))((unsigned long *)(((unsigned long *)0x01000010)[3]))[18])(0x40021000, 0x00000005);

    
    
    
    while(((tBoolean (*)(unsigned long ulBase, tBoolean bMasked))((unsigned long *)(((unsigned long *)0x01000010)[3]))[11])(0x40021000, 0) == 0)
    {
    }

    
    
    
    ((void (*)(unsigned long ulBase))((unsigned long *)(((unsigned long *)0x01000010)[3]))[13])(0x40021000);
}












void
Display96x16x1ClearLine(unsigned long ulY)
{
    unsigned long ulIdx;

    
    
    
    Display96x16x1WriteFirst(0x80);
    Display96x16x1WriteArray(ulY ? g_pucRITRow2 : g_pucRITRow1,
                             sizeof(g_pucRITRow1));

    
    
    
    for(ulIdx = 0; ulIdx < 95; ulIdx++)
    {
        Display96x16x1WriteByte(0x00);
    }
    Display96x16x1WriteFinal(0x00);
}










void
Display96x16x1Clear(void)
{
    
    
    
    Display96x16x1ClearLine(0);
    Display96x16x1ClearLine(1);
}






























void
Display96x16x1StringDrawLen(const char *pcStr, unsigned long ulLen,
                            unsigned long ulX, unsigned long ulY)
{
    
    
    
    ;
    ;
    ;

    
    
    
    Display96x16x1WriteFirst(0x80);
    Display96x16x1WriteByte((ulY == 0) ? 0xb0 : 0xb1);
    Display96x16x1WriteByte(0x80);
    Display96x16x1WriteByte((ulX + 4) & 0x0f);
    Display96x16x1WriteByte(0x80);
    Display96x16x1WriteByte(0x10 | (((ulX + 4) >> 4) & 0x0f));
    Display96x16x1WriteByte(0x40);

    
    
    
    
    while(ulLen && (*pcStr != 0))
    {
        
        
        
        
        if(ulX <= 90)
        {
            
            
            
            Display96x16x1WriteArray(g_pucFont[*pcStr - ' '], 5);

            
            
            
            
            
            if((ulX == 90) || (pcStr[1] == 0))
            {
                
                
                
                Display96x16x1WriteFinal(0x00);

                
                
                
                return;
            }

            
            
            
            Display96x16x1WriteByte(0x00);
        }
        else
        {
            
            
            
            
            Display96x16x1WriteArray(g_pucFont[*pcStr - ' '], 95 - ulX);
            Display96x16x1WriteFinal(g_pucFont[*pcStr - ' '][95 - ulX]);

            
            
            
            return;
        }

        
        
        
        pcStr++;

        
        
        
        ulLen--;

        
        
        
        
        ulX += 6;
    }
}


























void
Display96x16x1StringDraw(const char *pcStr, unsigned long ulX,
                         unsigned long ulY)
{
    
    
    
    ;
    ;
    ;

    
    
    
    
    Display96x16x1StringDrawLen(pcStr, 32, ulX, ulY);
}


















void
Display96x16x1StringDrawCentered(const char *pcStr, unsigned long ulY,
                                 tBoolean bClear)
{
    unsigned long ulLen, ulClip;

    
    
    
    ;
    ;

    
    
    
    ulLen = strlen(pcStr);

    
    
    
    
    if(ulLen > 16)
    {
        ulClip = (ulLen - 16) / 2;
        ulLen = 16;
    }
    else
    {
        ulClip = 0;
    }

    
    
    
    if(bClear)
    {
        Display96x16x1ClearLine(ulY);
    }

    
    
    
    Display96x16x1StringDrawLen(pcStr + ulClip, ulLen,
                                ((96 - (ulLen * 6)) / 2), ulY);
}


























































void
Display96x16x1ImageDraw(const unsigned char *pucImage, unsigned long ulX,
                      unsigned long ulY, unsigned long ulWidth,
                      unsigned long ulHeight)
{
    
    
    
    ;
    ;
    ;
    ;

    
    
    
    
    
    ulX += 4;

    
    
    
    while(ulHeight--)
    {
        
        
        
        Display96x16x1WriteFirst(0x80);
        Display96x16x1WriteByte((ulY == 0) ? 0xb0 : 0xb1);
        Display96x16x1WriteByte(0x80);
        Display96x16x1WriteByte(ulX & 0x0f);
        Display96x16x1WriteByte(0x80);
        Display96x16x1WriteByte(0x10 | ((ulX >> 4) & 0x0f));
        Display96x16x1WriteByte(0x40);

        
        
        
        Display96x16x1WriteArray(pucImage, ulWidth - 1);
        Display96x16x1WriteFinal(pucImage[ulWidth - 1]);

        
        
        
        pucImage += ulWidth;
        ulY++;
    }
}














void
Display96x16x1Init(tBoolean bFast)
{
    unsigned long ulIdx;

    
    
    
    
    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000008);
    ((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[15])(0x40007000, 0x00000020);
    ((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal))((unsigned long *)(((unsigned long *)0x01000010)[4]))[0])(0x40007000, 0x00000020, 0x00000020);

    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x10004000);
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000020);
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000040);

    
    
    
    ((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[15])(0x40025000, 0x00000001);
    ((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal))((unsigned long *)(((unsigned long *)0x01000010)[4]))[0])(0x40025000, 0x00000001, 0x00000001);

    
    
    
    SysCtlDelay(32);
    ((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal))((unsigned long *)(((unsigned long *)0x01000010)[4]))[0])(0x40025000, 0x00000001, 0);

    
    
    
    
    SysCtlDelay(32);
    ((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal))((unsigned long *)(((unsigned long *)0x01000010)[4]))[0])(0x40025000, 0x00000001, 0x00000001);

    
    
    
    GPIOPinConfigure(0x00060003);
    GPIOPinConfigure(0x00060403);
    ((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[16])(0x40026000, 0x00000001 | 0x00000002);

    
    
    
    ((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[5])(0x10004000);

    
    
    
    ((void (*)(unsigned long ulBase, unsigned long ulI2CClk, tBoolean bFast))((unsigned long *)(((unsigned long *)0x01000010)[3]))[1])(0x40021000, ((unsigned long (*)(void))((unsigned long *)(((unsigned long *)0x01000010)[13]))[24])(), bFast);

    
    
    
    
    for(ulIdx = 0; ulIdx < sizeof(g_pucRITInit);
        ulIdx += g_pucRITInit[ulIdx] + 1)
    {
        
        
        
        Display96x16x1WriteFirst(g_pucRITInit[ulIdx + 1]);
        Display96x16x1WriteArray(g_pucRITInit + ulIdx + 2,
                                 g_pucRITInit[ulIdx] - 2);
        Display96x16x1WriteFinal(g_pucRITInit[ulIdx + g_pucRITInit[ulIdx]]);
    }

    
    
    
    Display96x16x1Clear();

    
    
    
    Display96x16x1DisplayOn();
}











void
Display96x16x1DisplayOn(void)
{
    unsigned long ulIdx;

    
    
    
    
    for(ulIdx = 0; ulIdx < sizeof(g_pucRITInit);
        ulIdx += g_pucRITInit[ulIdx] + 1)
    {
        
        
        
        Display96x16x1WriteFirst(g_pucRITInit[ulIdx + 1]);
        Display96x16x1WriteArray(g_pucRITInit + ulIdx + 2,
                                 g_pucRITInit[ulIdx] - 2);
        Display96x16x1WriteFinal(g_pucRITInit[ulIdx + g_pucRITInit[ulIdx]]);
    }
}













void
Display96x16x1DisplayOff(void)
{
    
    
    
    Display96x16x1WriteFirst(0x80);
    Display96x16x1WriteByte(0xae);
    Display96x16x1WriteByte(0x80);
    Display96x16x1WriteByte(0xad);
    Display96x16x1WriteByte(0x80);
    Display96x16x1WriteFinal(0x8a);
}







