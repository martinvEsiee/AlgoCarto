#include <stdlib.h>
#include "message.h"
#include "motor_my.h"
#include "capteur.h"
#include "order.h"
#include "stdio.h"


t_possition * evalbot;
int main(){
	int cont=1;
	char str[100];
	char chact;
	
	evalbot = malloc(sizeof(t_possition));
	evalbot->x =0;
	evalbot->y = 0;
	evalbot->angle =0;
	evalbot->state =WAIT;
	
	//init motor
	motor_init();
	mess_init();
	bump_init();
	wheel_init();
	
	motor_STOP();
	
	while(cont){
		chact = mess_get();
		
		actionInt(chact);
		
		if(evalbot->state != PB){
			switch(chact){
				case 'i':	
					
				sprintf(str,"!POS:x:%4i y:%4i a:%4i",
					evalbot->x,
					evalbot->y,
					evalbot->angle);
				
					mess_setString(str,24);
				break;
				case 'p':	
					motor_STOP();
				break;
			}
			}
		
		
		
		
		
	
	
	
	}
	
	
	
	
	
//init Capteur

//init init serial

//start Boucle

}
