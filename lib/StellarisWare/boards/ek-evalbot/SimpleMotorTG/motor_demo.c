#include "inc/hw_types.h"
#include "inc/hw_memmap.h"


#include "driverlib/gpio.h"
#include "driverlib/rom.h"
#include "driverlib/sysctl.h"
#include "driverlib/systick.h"

#include "drivers/io.h"
#include "drivers/motor.h"

static volatile unsigned long g_ulTickCount;

void SysTickHandler () {
	;
}



int
main(void)
{ 
   int a;
	int b,c=0;
    // Set the clocking to directly from the crystal
    //
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN |
                      SYSCTL_XTAL_16MHZ);
   //
  // Initialize the motor driver
    MotorsInit();
       
                      
    // Set the motor duty cycle to 50%.
    // Duty cycle is specified as 8.8 fixed point.
    MotorSpeed(0, 10 << 8);
	 MotorSpeed(1, 10<< 8);
	
while(1) {
  MotorRun(0);
	MotorRun(1);
	}
           
}
