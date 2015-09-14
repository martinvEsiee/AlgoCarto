//*****************************************************************************
//
// motor_demo.c - Example to run the EVALBOT motors
//
// Copyright (c) 2011-2012 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
// Texas Instruments (TI) is supplying this software for use solely and
// exclusively on TI's microcontroller products. The software is owned by
// TI and/or its suppliers, and is protected under applicable copyright
// laws. You may not combine this software with "viral" open-source
// software in order to form a larger program.
// 
// THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
// NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
// NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
// CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
// DAMAGES, FOR ANY REASON WHATSOEVER.
// 
// This is part of revision 9107 of the Stellaris Firmware Development Package.
//
//*****************************************************************************

#include "inc/hw_types.h"
#include "inc/hw_memmap.h"


#include "driverlib/gpio.h"
#include "driverlib/rom.h"
#include "driverlib/sysctl.h"
#include "driverlib/systick.h"

#include "drivers/io.h"
#include "drivers/motor.h"




//*****************************************************************************
//
// Counter for the 10 ms system clock ticks.  Used for tracking time.
//
//*****************************************************************************
static volatile unsigned long g_ulTickCount;

//*****************************************************************************
//
// The error routine that is called if the driver library encounters an error.
//
//*****************************************************************************
void SysTickHandler () {
	;
}


//*****************************************************************************
//
// The main application.  It configures the board and then enters a loop
// to process the button and sensor presses and run the motor.
//
//*****************************************************************************
int
main(void)
{ 
   int a;
	int b,c=0;
    //
    // Set the clocking to directly from the crystal
    //
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN |
                       SYSCTL_XTAL_16MHZ);
   //
  // Initialize the motor driver
    MotorsInit();
                   
    

                   
    // Set the motor duty cycle to 50%.
    // Duty cycle is specified as 8.8 fixed point.
    MotorSpeed(0, 50 << 8);
    MotorSpeed(1, 50 << 8);
	
while(1) {
  // Start the motor running
	MotorDir(1, 0);
  MotorRun(0);
	MotorRun(1);

	for (a=0;a<100000;a++) 
		for (b=0;b<100;b++)
			c++;
   // Stop the motor
  MotorStop(0);  
	MotorStop(1);
	for (a=0;a<100000;a++) 
		for (b=0;b<100;b++)
			c++;
	

	}
           
}

