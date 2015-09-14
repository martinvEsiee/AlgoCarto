#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/rom.h"

#include "inc/hw_types.h"
#include "boards/ek-evalbot/drivers/motor.h"
#include "boards/ek-evalbot/drivers/sensors.h"
#include "boards/ek-evalbot/drivers/io.h"

static void DriveWheelSensorInterrupt(tWheel wheelSide)
{
	LED_Toggle(LED_1);
}



int main() {
	
	LEDsInit();
	
	//MotorsInit();
	
  WheelSensorsInit(DriveWheelSensorInterrupt);
	WheelSensorEnable();
  WheelSensorIntEnable(WHEEL_LEFT);
  WheelSensorIntEnable(WHEEL_RIGHT);
	LED_On(LED_1);
	
	
	//MotorSpeed(RIGHT_SIDE, 50 << 8);
	//MotorSpeed(LEFT_SIDE, 50 << 8);
	
	//MotorRun(RIGHT_SIDE);
	//MotorRun(LEFT_SIDE);
	
	while(1);
	
	return 0;
}

void DriveStop(void)
{
	MotorSpeed(RIGHT_SIDE, 0);
	MotorSpeed(LEFT_SIDE, 0);
	MotorStop(RIGHT_SIDE);
	MotorStop(LEFT_SIDE);
}