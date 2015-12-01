#include "boards/ek-evalbot/drivers/motor.h"
//init motor
#include "order.h"
#include "message.h"
#include "stdio.h"

int motor_init(){
	MotorsInit();
	MotorSpeed(LEFT_SIDE  , 50<<8);
	MotorSpeed(RIGHT_SIDE , 50<<8);
	return 1;
}
//go up 
int motor_UP(){
	evalbot->ord = UP;
	MotorDir(LEFT_SIDE,FORWARD);
	MotorDir(RIGHT_SIDE,FORWARD);
	MotorRun(LEFT_SIDE);
	MotorRun(RIGHT_SIDE);
	return 1;
}
//go Down
int motor_DOWN(){
		evalbot->ord = BACK;
	MotorDir(LEFT_SIDE,FORWARD);
	MotorDir(RIGHT_SIDE,FORWARD);
	MotorDir(LEFT_SIDE,REVERSE);
	MotorDir(RIGHT_SIDE,REVERSE);
	MotorRun(LEFT_SIDE);
	MotorRun(RIGHT_SIDE);
	return 1;
}
//turn R 90
int motor_LEFT(){
		evalbot->ord = LEFT;
	MotorDir(LEFT_SIDE,FORWARD);
	MotorDir(RIGHT_SIDE,FORWARD);
	MotorDir(LEFT_SIDE,REVERSE);
	MotorRun(LEFT_SIDE);
	MotorRun(RIGHT_SIDE);
	return 1;
}
//turn L 90
int motor_RIGHT(){
		evalbot->ord = RIGHT;
	MotorDir(LEFT_SIDE,FORWARD);
	MotorDir(RIGHT_SIDE,FORWARD);
	MotorDir(RIGHT_SIDE,REVERSE);
	MotorRun(LEFT_SIDE);
	MotorRun(RIGHT_SIDE);
	return 1;
}

int motor_STOP(){
				char str[28];
				evalbot->state=WAIT;
				MotorStop(LEFT_SIDE);
				MotorStop(RIGHT_SIDE);
				sprintf(str,"!POS:x:%4i y:%4i a:%4i",
					evalbot->x,
					evalbot->y,
					evalbot->angle);
					mess_setString(str,28);
	return 1;
}

int wait(int time){
	int i;
for(i=0;i<time;i++)
	{
	;
	}
	return 1;
} 

//test
int motor_test(){
	int t =5000000;
	motor_init();
	wait(t);
	motor_UP();
	wait(t);
	motor_DOWN();
	wait(t);
	motor_STOP();
	wait(t);
	motor_RIGHT();
	wait(t);
	motor_LEFT();
	wait(t);
	motor_STOP();
	return 1;
}

	
