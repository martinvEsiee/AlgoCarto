#include "stdlib.h"
#include "boards/ek-evalbot/drivers/motor.h"
#include "boards/ek-evalbot/drivers/sensors.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "order.h"

// init bumper
// init wheel
// interupt bumper
// interupt wheel

#define A360 28
#include "message.h"
#include "capteur.h"
#include "motor_my.h"



void wheel_interuptFunction(tWheel a){
	tBumper bump;
	if(evalbot->state == PB){
	
		if(a == WHEEL_LEFT){
			
			if((evalbot->wheel&WHEEL_LEFT) == WHEEL_LEFT )
				{
					evalbot->wheel = NONE_d;
				}
		}
		if(a == WHEEL_RIGHT ){
			
		if((evalbot->wheel&WHEEL_RIGHT) == WHEEL_RIGHT )
				{
					evalbot->wheel = NONE_d;
				}
		}
		
		if(evalbot->wheel == NONE_d){
			motor_STOP();
		}
		return;
	}
	
	
	
	if(a == WHEEL_LEFT){
		evalbot->wheel |= LEFT_d;
	}
	if(a == WHEEL_RIGHT){
		evalbot->wheel |= RIGHT_d;
	}
	
	if(evalbot->wheel == BOTH_d){
		evalbot->wheel = NONE_d;
	
		
		switch(evalbot->state){
///////////////////////////////////
			case DO:
				
				switch(evalbot->ord){
					
					case UP:
						switch(evalbot->angle){
							case 0:
								evalbot->x++;
								
							break;
							
							case  A360/4:
								evalbot->y++;
							break;
							
							case  A360/2:
								evalbot->x--;
							break;
							
							case  (3*A360)/4:
								evalbot->y--;
							break;
						}
						
							motor_STOP();
						break;
					
					case BACK:
						switch(evalbot->angle){
							
							case 0:
								evalbot->x--;
							break;
							
							case A360/4:
								evalbot->y--;
							break;
							
							case A360/2:
								evalbot->x++;
							break;
							
							case (3*A360)/4:
								evalbot->y++;
							break;
						}
							motor_STOP();
						break;
					
					case RIGHT:
						evalbot->angle = (evalbot->angle -1+A360)%A360 ;
						if(evalbot->angle % (A360/4) == 0){
							motor_STOP();
						}
						break;
					case LEFT:
						evalbot->angle = (evalbot->angle +1+A360)%A360;
						if(evalbot->angle % (A360/4) == 0){
							motor_STOP();
						}
						break;
				}
				break;
				
///////////////////////////////////
			case WAIT:
				return;
				break;
			
///////////////////////////////////
			case PB:
				return;
				break;
			
		}
		
	
		
	}
	
	
	return ;
}

void bump_interuptFunction(tBumper a){
	char str[40];
	sprintf(str,"!OBS:x:%4i y:%4i a:%4i",
		evalbot->x,
		evalbot->y,
		evalbot->angle
	);
		mess_setString(str,25);
	

	if(evalbot->state == DO){
		motor_DOWN();
		evalbot->state = PB;
		return;
	}
	if(evalbot->state == WAIT){
		actionInt('s');
		evalbot->state = DO;
	}
	
		
		
	
	return ;
	
}

void actionInt(char chact ){
	if(evalbot->state == WAIT )
		switch(chact){
			case 'z':
				motor_UP();
				evalbot->state = DO;
				break;
			case 's':
				motor_DOWN();
				evalbot->state = DO;
				break;
			case 'q':
				motor_LEFT();
				evalbot->state = DO;
				break;
			case 'd':
				motor_RIGHT();
				evalbot->state = DO;
				break;
		}

}


int bump_init(){
	
//Bumper init and interupt
	BumpSensorsInit();
	BumpSensorsInterupEnable(bump_interuptFunction);
	BumperEnableSide(BUMP_LEFT);
	BumperEnableSide(BUMP_RIGHT);


	return 1;
}

int wheel_init(){
	
	//wheel sensor init
	WheelSensorsInit(wheel_interuptFunction);
	WheelSensorEnable();
	WheelSensorIntEnable(WHEEL_LEFT);
	WheelSensorIntEnable(WHEEL_RIGHT);

	return 1;
}

int bumper_check(){
	if(	BumpSensorGetStatus( BUMP_LEFT))
		return BUMP_LEFT;
	if(	BumpSensorGetStatus( BUMP_RIGHT))
		return BUMP_RIGHT;
	
	return 0;
}




int bump_test(){
	bump_init();
	
	return 1;
}
int wheel_test(){
	wheel_init();
	
	return 1;
}

int sensor_test(){
	bump_test();
	wheel_test();
	return 1;
}

