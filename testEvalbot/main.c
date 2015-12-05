#include <stdlib.h>
#include "message.h"
#include "motor_my.h"
#include "capteur.h"
#include "order.h"
#include "stdio.h"


t_possition * evalbot;
int main(){
	
	//initialisation des variable de base
	int cont=1;
	char str[100];
	char chact;
	
	// alocation de la possition de l'evalbot
	evalbot = malloc(sizeof(t_possition));
	evalbot->x =0;
	evalbot->y = 0;
	evalbot->angle =0;
	evalbot->state =WAIT;
	
	//init
	motor_init();
	mess_init();
	bump_init();
	wheel_init();
	
	//on met l'evalbot imobile
	motor_STOP();
	
	while(cont){
		//get un message
		chact = mess_get();
		
		//fait l'action
		actionInt(chact);
		
		// detecte si l'evalbot n' a pas de PB
		if(evalbot->state != PB){
			//regarde l'ordre
			switch(chact){
				// envoie une info
				case 'i':	
				sprintf(str,"!POS:x:%4i y:%4i a:%4i",
					evalbot->x,
					evalbot->y,
					evalbot->angle);
					mess_setString(str,24);
				break;
				
				// met pause
				case 'p':	
					motor_STOP();
				break;
			}
			
			}
		
		
			/*
			tout les autres comportement sont geré 
			par les interuptions
			*/			
	}

}
