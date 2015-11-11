/* Ce projet fait clignoter les 2 leds TG 9/2012*/
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include "inc/hw_memmap.h"
#include "driverlib/rom.h"



int main(void) {
   int a=0;

  // LEDs sur broches 4 & 5
	//ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
	//((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000020);

	/*
	unsigned int *registre2 = (unsigned int *) 0x400FE108 ;
	*registre2 = *registre2 | 0x20; // ou encore  *registre2 |= 0x80;
	
	#define  registre1 0x400FE108
	*(int *) (registre1)= *(int *)(registre1)| 0x20;
*/

	*(int *) (0x400FE108)= *(int *)(0x400FE108)| 0x20;


	
	
	//*(int *) (0x400FE108)= *(int *)(0x400FE108)| 0x20;
	
//ROM_GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_4 | GPIO_PIN_5);
//((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[15])(0x40025000, 0x00000010 | 0x00000020);
	//donc GPIO_PORTF_BASE=0x40025000
	//GPIO_PIN_4=0x00000010 et GPIO_PIN_5=0x00000020 donc ucPins = 0x0000030
// GPIOPinTypeGPIOOutput(unsigned long ulPort, unsigned char ucPins)
//   GPIOPadConfigSet(ulPort, ucPins, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD);
//			avec	GPIOPadConfigSet(unsigned long ulPort, unsigned char ucPins,
//                 unsigned long ulStrength, unsigned long ulPinType)
//	// Set the output drive strength.
/*
#define GPIO_STRENGTH_2MA       0x00000001  // 2mA drive strength
#define GPIO_STRENGTH_4MA       0x00000002  // 4mA drive strength
#define GPIO_STRENGTH_8MA       0x00000004  // 8mA drive strength
#define GPIO_STRENGTH_8MA_SC    0x0000000C  // 8mA drive with slew rate control	
		
#define GPIO_O_DR2R             0x00000500  // GPIO 2-mA Drive Select
#define GPIO_O_DR4R             0x00000504  // GPIO 4-mA Drive Select
#define GPIO_O_DR8R             0x00000508  // GPIO 8-mA Drive Select
#define GPIO_O_SLR              0x00000518  // GPIO Slew Rate Control Select
    HWREG(ulPort + GPIO_O_DR2R) = ((ulStrength & 1) ?
                                   (HWREG(ulPort + GPIO_O_DR2R) | ucPins) :
                                   (HWREG(ulPort + GPIO_O_DR2R) & ~(ucPins)));
		*/
		*(int *)(0x40025000+0x00000500) =  	(*(int *)(0x40025000+0x00000500)) | (0x00000030);										 
    for (a=0;a<1000;a++);
		/* HWREG(ulPort + GPIO_O_DR4R) = ((ulStrength & 2) ?
                                   (HWREG(ulPort + GPIO_O_DR4R) | ucPins) :
                                   (HWREG(ulPort + GPIO_O_DR4R) & ~(ucPins))); */
		*(int *)(0x40025000+0x00000504) = 	*(int *)(0x40025000+0x00000504) & (~(0x00000030));
    for (a=0;a<1000;a++);
		/* HWREG(ulPort + GPIO_O_DR8R) = ((ulStrength & 4) ?
                                   (HWREG(ulPort + GPIO_O_DR8R) | ucPins) :
                                   (HWREG(ulPort + GPIO_O_DR8R) & ~(ucPins))); */
		*(int *)(0x40025000+0x00000508) = *(int *)(0x40025000+0x00000508) &	(~(0x00000030));
    for (a=0;a<1000;a++);
		/* HWREG(ulPort + GPIO_O_SLR) = ((ulStrength & 8) ?
                                  (HWREG(ulPort + GPIO_O_SLR) | ucPins) :
                                  (HWREG(ulPort + GPIO_O_SLR) & ~(ucPins))); */
		*(int *)(0x40025000+0x00000518) = *(int *)(0x40025000+0x00000518) & (~(0x00000030));
    for (a=0;a<1000;a++);
		//
    // Set the pin type.
    //
		/*
    #define GPIO_PIN_TYPE_STD       0x00000008  // Push-pull
    #define GPIO_PIN_TYPE_STD_WPU   0x0000000A  // Push-pull with weak pull-up
    #define GPIO_PIN_TYPE_STD_WPD   0x0000000C  // Push-pull with weak pull-down
    #define GPIO_PIN_TYPE_OD        0x00000009  // Open-drain
    #define GPIO_PIN_TYPE_OD_WPU    0x0000000B  // Open-drain with weak pull-up
    #define GPIO_PIN_TYPE_OD_WPD    0x0000000D  // Open-drain with weak pull-down
    #define GPIO_PIN_TYPE_ANALOG    0x00000000  // Analog comparator
    
		#define GPIO_O_ODR              0x0000050C  // GPIO Open Drain Select
    #define GPIO_O_PUR              0x00000510  // GPIO Pull-Up Select
    #define GPIO_O_PDR              0x00000514  // GPIO Pull-Down Select
    #define GPIO_O_DEN              0x0000051C  // GPIO Digital Enable
    HWREG(ulPort + GPIO_O_ODR) = ((ulPinType & 1) ?
                                  (HWREG(ulPort + GPIO_O_ODR) | ucPins) :
                                  (HWREG(ulPort + GPIO_O_ODR) & ~(ucPins)));
																	*/
		*(int *)(0x40025000+0x0000050C)= *(int *)(0x40025000+0x0000050C) & (~0x00000030);
		for (a=0;a<1000;a++);
    /* HWREG(ulPort + GPIO_O_PUR) = ((ulPinType & 2) ?
                                  (HWREG(ulPort + GPIO_O_PUR) | ucPins) :
                                  (HWREG(ulPort + GPIO_O_PUR) & ~(ucPins))); */
		*(int *)(0x40025000+0x00000510)= *(int *)(0x40025000+0x00000510) & ~(0x00000030);
		for (a=0;a<1000;a++);
    /* HWREG(ulPort + GPIO_O_PDR) = ((ulPinType & 4) ?
                                  (HWREG(ulPort + GPIO_O_PDR) | ucPins) :
                                  (HWREG(ulPort + GPIO_O_PDR) & ~(ucPins))); */
		*(int *)(0x40025000+0x00000514)= *(int *)(0x40025000+0x00000514) & ~(0x00000030);															
		for (a=0;a<1000;a++);
    /* HWREG(ulPort + GPIO_O_DEN) = ((ulPinType & 8) ?
                                  (HWREG(ulPort + GPIO_O_DEN) | ucPins) :
                                  (HWREG(ulPort + GPIO_O_DEN) & ~(ucPins))); */
		*(int *)(0x40025000+0x00000514)= *(int *)(0x40025000+0x00000514) | 0x00000030; //BIZARRE CAR PAS PUSH PULL...
		for (a=0;a<1000;a++);
		/*
    //
    // Set the analog mode select register.  This register only appears in
    // DustDevil-class (and later) devices, but is a harmless write on
    // Sandstorm- and Fury-class devices.
    //
				 #define GPIO_O_AMSEL            0x00000528  // GPIO Analog Mode Select
				 #define GPIO_PIN_TYPE_ANALOG    0x00000000  // Analog comparator
				HWREG(ulPort + GPIO_O_AMSEL) =
        ((ulPinType == GPIO_PIN_TYPE_ANALOG) ?
         (HWREG(ulPort + GPIO_O_AMSEL) | ucPins) :
         (HWREG(ulPort + GPIO_O_AMSEL) & ~(ucPins))); */
		*(int *)(0x40025000+0x00000528)= *(int *)(0x40025000+0x00000528) | (~0x00000030); 
				 
				 
  /*=============================================================================
  GPIODirModeSet(ulPort, ucPins, GPIO_DIR_MODE_OUT);
		GPIODirModeSet(unsigned long ulPort, unsigned char ucPins,
               unsigned long ulPinIO)
 #define GPIO_O_DIR              0x00000400  // GPIO Direction
 #define GPIO_DIR_MODE_OUT       0x00000001  // Pin is a GPIO output
 #define GPIO_O_AFSEL            0x00000420  // GPIO Alternate Function Select
 
 HWREG(ulPort + GPIO_O_DIR) = ((ulPinIO & 1) ?
                                  (HWREG(ulPort + GPIO_O_DIR) | ucPins) :
                                  (HWREG(ulPort + GPIO_O_DIR) & ~(ucPins))); */
	*(int *)(0x40025000+0x400) = 	*(int *)(0x40025000+0x400) | 0x00000030;														
	for (a=0;a<1000;a++);															
/* HWREG(ulPort + GPIO_O_AFSEL) = ((ulPinIO & 2) ?
                                    (HWREG(ulPort + GPIO_O_AFSEL) | ucPins) :
                                    (HWREG(ulPort + GPIO_O_AFSEL) &
                                     ~(ucPins)));		*/															
	*(int *)(0x40025000+0x420) = 	*(int *)(0x40025000+0x420) & ~0x00000030;
	for (a=0;a<1000;a++);
  while(1) {
 		//ROM_GPIOPinWrite(GPIO_PORTF_BASE, 0x10, 0x10);
		*(int *) (0x40025000+(0x10<<2)) = 0x10;
		*(int *) (0x40025000+(0x20<<2)) = 0x00;
		
		//ROM_GPIOPinWrite(GPIO_PORTF_BASE, 0x20, 0x00);
// 		ROM_GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_4 | GPIO_PIN_5,
//                       ~ROM_GPIOPinRead(GPIO_PORTF_BASE,
//                                        GPIO_PIN_4 | GPIO_PIN_5));
//  GPIOPinWrite(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal)  
//	{ HWREG(ulPort + (GPIO_O_DATA + (ucPins << 2))) = ucVal;	} avec #define GPIO_O_DATA             0x00000000  // GPIO Data
//    HWREG(GPIO_PORTF_BASE+ 0 + 		
//	*(int *) (0x40025000+(0x10<<2) = 255;
//	*(int *) (0x4005D000+(0x10<<2) = 255;
		for (a=0;a<1000000;a++);
		
		
		//ROM_GPIOPinWrite(GPIO_PORTF_BASE, 0x10, 0x00);
		*(int *) (0x40025000+(0x10<<2)) = 0x00;
		//ROM_GPIOPinWrite(GPIO_PORTF_BASE, 0x20, 0x20);
		*(int *) (0x40025000+(0x20<<2)) = 0x20;
		
		for (a=0;a<1000000;a++);
	}
}
//========================================================================
void MainApresPreprocesseur(){
   int a=0,b=0;
	((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000020);
	//donc SYSCTL_PERIPH_GPIOF = 0x20000020
	((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[15])(0x40025000, 0x00000010 | 0x00000020);
	//donc GPIO_PORTF_BASE=0x40025000
	//GPIO_PIN_4=0x00000010 et GPIO_PIN_5=0x00000020

  while(1) {
		((void (*)(unsigned long ulPort, unsigned char ucPins, unsigned char ucVal))((unsigned long *)(((unsigned long *)0x01000010)[4]))[0])(0x40025000, 0x00000010 | 0x00000020,
                      ~((long (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[11])(0x40025000,
                                       0x00000010 | 0x00000020));
	 for (a=0;a<1000000;a++);
		b=b*2;
	}
}

