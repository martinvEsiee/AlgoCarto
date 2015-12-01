#include "carto.h"
#include "stdlib.h"
#include "boards/ek-evalbot/drivers/motor.h"
#include "boards/ek-evalbot/drivers/sensors.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

Carto_Map * GLOBAL_VAR_MAP;
Carto_order* theLast=NULL;

void interuptFunctionWheel(tWheel sens){
	
	if(sens == WHEEL_LEFT){
			GLOBAL_VAR_MAP->evalbot->order->event |= WEEL_LEFT_E;
	}
	if(sens == WHEEL_RIGHT){
			GLOBAL_VAR_MAP->evalbot->order->event |= WEEL_RIGHT_E;
	}
	
	if((GLOBAL_VAR_MAP->evalbot->order->event & (WEEL_LEFT_E |WEEL_RIGHT_E)) == (WEEL_LEFT_E | WEEL_RIGHT_E) ){
			GLOBAL_VAR_MAP->evalbot->order->state = DONE;	
	}
}

void interuptFunctionBump(tBumper B){
	if(B == BUMP_LEFT)
		GLOBAL_VAR_MAP->evalbot->order->event |= OBSTABLE_RIGHT;
	
	if(B == BUMP_RIGHT)
		GLOBAL_VAR_MAP->evalbot->order->event |= OBSTABLE_LEFT;
	
	GLOBAL_VAR_MAP->evalbot->order->state = PB;
}

void Carto_order_free_one(Carto_order * passToBeFree){
	if(passToBeFree!=NULL)
		free(passToBeFree);
}


void Carto_order_free_list(Carto_order * passToBeFree){
	Carto_order * n;
	
	while(passToBeFree != NULL)
	{
		n=passToBeFree->next;
		free(passToBeFree);
		passToBeFree = n;
	}
	return;
	
}


void Carto_order_actualise(Carto_Poss * evalbot){
	Carto_order * neworder;
	
	if(evalbot->order->state == DONE)
	{
		//before to destroy the event,order,and state actualise the data thanx!
		Carto_evalbot_update_data(GLOBAL_VAR_MAP);
		
		if(evalbot->order->time > 1){
			
			evalbot->order->time -= 1;
			evalbot->order->state = TODO;
			
		}else{
			neworder = evalbot->order->next;	
			//clean map 
			Carto_order_free_one(evalbot->order);
			
			
			if(neworder != NULL ){
				evalbot->order = neworder;
			}else{
				//temporaire
				Carto_order_add(Carto_order_build(WAIT,1));		
			}
	}
		return;
	}
	
	if(evalbot->order->state == PB){
		//before to destroy the event,order,and state actualise the data thanx!
		Carto_evalbot_update_data(GLOBAL_VAR_MAP);
		
		//permet de corigé le pb
		theLast = NULL;
		switch(evalbot->order->ordre)
		{
		//----------------------------------------------------------
				case GO_UP:
					Carto_order_free_list(evalbot->order);
					 
					Carto_order_add(Carto_order_build(GO_BACK,1));
					
				break;
		//----------------------------------------------------------
				case GO_BACK:
					//wait to the evalbot go back and unpress the buto
					evalbot->order->state = DOING;
				break;
		//----------------------------------------------------------
				default:
					Carto_order_build(WAIT,1);
				break;
		//----------------------------------------------------------
		}
		
	return;
	}
	
	
	
	/*No pb
			-> update evalbot possition
			-> update data
			-> update order
	pb
			-> updata data
			-> stop evalbot
			-> create new order
			-> clean old order
			-> place new order
			-> go back to old possition
	*/

}



//une ligne aurai pu marcher
Carto_data_Type Carto_data_split(unsigned char partNum, unsigned char data){
	unsigned char d = data;
	unsigned char mask=0x03;//0b00 00 00 11
	mask = mask<<partNum;
	d= d&mask;
	d=d>>partNum;
	return (Carto_data_Type)d;
}

char Carto_data_merge(
Carto_data_Type d1,
Carto_data_Type d2,
Carto_data_Type d3,
Carto_data_Type d4)
{
	return d4<<6 | d3<<4 | d2<<2 | d1;
}

void Carto_data_change(char * change, Carto_data_Type by , unsigned char at){
	char a = 0xFF;
	a = by & (a<<at);
	*change = *change & a;
}


Carto_Map* Carto_InitCarto(){
	Carto_subMap * tmp;

	Carto_Map * map = malloc(sizeof(Carto_Map));
	map->evalbot = Carto_cons_Poss(0,0,0);
	
	//build de la map
	tmp = Carto_subMap_build(0,0,map);
	Carto_map_addsubmap(map,tmp);
	
	tmp = Carto_subMap_build(0,1,map);
	Carto_map_addsubmap(map,tmp);
	
	tmp = Carto_subMap_build(0,-1,map);
	Carto_map_addsubmap(map,tmp);
	
	//build -1
	tmp = Carto_subMap_build(-1,0,map);
	Carto_map_addsubmap(map,tmp);
	
	tmp = Carto_subMap_build(-1,1,map);
	Carto_map_addsubmap(map,tmp);
	
	tmp = Carto_subMap_build(-1,-1,map);
	Carto_map_addsubmap(map,tmp);
	
		//build 1
	tmp = Carto_subMap_build(1,0,map);
	Carto_map_addsubmap(map,tmp);
	
	tmp = Carto_subMap_build(1,1,map);
	Carto_map_addsubmap(map,tmp);
	
	tmp = Carto_subMap_build(1,-1,map);
	Carto_map_addsubmap(map,tmp);
	
	
	
//Motor init and speed
	MotorsInit();
	MotorSpeed(LEFT_SIDE, 50<<8);
	MotorSpeed(RIGHT_SIDE, 50<<8);

//Bumper init and interupt
	BumpSensorsInit();
	BumpSensorsInterupEnable(interuptFunctionBump);
	BumperEnableSide(BUMP_LEFT);
	BumperEnableSide(BUMP_RIGHT);

//wheel sensor init
	WheelSensorsInit(interuptFunctionWheel);
	WheelSensorEnable();
	WheelSensorIntEnable(WHEEL_LEFT);
	WheelSensorIntEnable(WHEEL_RIGHT);
	return NULL;
}

void Carto_evalbot_update_data(Carto_Map *  map){
	/*no ostacle
		HAVE_GO_UP,
	HAVE_GO_DOWN,
	*/

		
	
	
	
	if(
		!(
			map->evalbot->angle == A0 	|| 
			map->evalbot->angle == A90 	|| 
			map->evalbot->angle == A180 || 
			map->evalbot->angle == A270
			)
		){
		return ;
	}


	
	
	
	switch(map->evalbot->order->event){
//----------------------------------------------------------
		case OBSTABLE_LEFT:
				Carto_map_set(map,
		map->evalbot->X +
		((map->evalbot->angle == A0		)? 	-2 	: 0 ) 	+
		((map->evalbot->angle == A90	)? 	5		: 0 ) 	+
		((map->evalbot->angle == A180	)? 	2 	: 0 ) 	+
		((map->evalbot->angle == A270	)?	-5	:	0 )
		,
		map->evalbot->Y +
		((map->evalbot->angle == A0		)? 	5 	: 0 ) 	+
		((map->evalbot->angle == A90	)? 	2		: 0 ) 	+
		((map->evalbot->angle == A180	)? 	-5 	: 0 ) 	+
		((map->evalbot->angle == A270	)?	-2	:	0 )
		,OBSTACL);
		break;
//----------------------------------------------------------
		case OBSTABLE_RIGHT:
			Carto_map_set(map,
		map->evalbot->X +
		((map->evalbot->angle == A0		)? 	2 	: 0 ) 	+
		((map->evalbot->angle == A90	)? 	5		: 0 ) 	+
		((map->evalbot->angle == A180	)? 	-2 	: 0 ) 	+
		((map->evalbot->angle == A270	)?	-5	:	0 )
		,
		map->evalbot->Y +
		((map->evalbot->angle == A0		)? 	5 	: 0 ) 	+
		((map->evalbot->angle == A90	)? 	-2	: 0 )		+
		((map->evalbot->angle == A180	)? 	-5 	: 0 ) 	+
		((map->evalbot->angle == A270	)?	2		:	0 )
		,OBSTACL);
		break;
		
//----------------------------------------------------------
		case WEEL_BOTH : 
			if(map->evalbot->order->state == DONE)
				switch(map->evalbot->order->ordre){
					case GO_UP:
						map->evalbot->X +=
					((map->evalbot->angle == A0		)? 	1		: 0 ) +
					((map->evalbot->angle == A180	)? 	-1	: 0 )	
					;
					
					map->evalbot->Y +=
					((map->evalbot->angle == A90	)? 	1		: 0 )	+
					((map->evalbot->angle == A270	)? 	-1	: 0 )	
					;
					break;
					
					case TURN_LEFT:
						map->evalbot->angle++;
					case TURN_RIGHT:
						map->evalbot->angle--;
					break;
					
				default:
					break;
				}
//----------------------------------------------------------
		
		default://if you want new captor
		return;
	}
	
}

Carto_subMap* Carto_subMap_build(int x,int y,Carto_Map * map){
	int i,j;
	char*data;
	unsigned char data_stock;
	
	Carto_subMap* ret = malloc(sizeof(Carto_subMap));
	ret->status = IS_NOT_INIT;
	ret->X = x;
	ret->Y = y;
	
	ret->data = malloc(32*sizeof(int*));
	data =	malloc(32*8*sizeof(char));
	if(ret->data == NULL || data == NULL)
  {
			return NULL;
	}
	
	for(i=0;i<32;i++){
		data += 8;
		ret->data[i] = data;
	}

	//NOSERVEUR
	#ifdef NO_SERVEUR_DEF
		//on aloue tout en inconue
	data_stock = Carto_data_merge(INCONUE,INCONUE,INCONUE,INCONUE);
	for(i=0;i<32;i++)
		for(j=0;j<8;j++)
			ret->data[i][j] = data_stock;
	#else
		//ADD demande to serveur la map
		
		
	#endif
	return ret;
}


Carto_Poss* Carto_cons_Poss(int x,int y,int angle){
	
	Carto_Poss* pos = malloc(sizeof(Carto_Poss));
	pos->X = x;
	pos->Y = y;
	pos->angle = angle;
	return pos;
}


void Carto_GoTo(Carto_Poss * poss,Carto_Poss* goTo){

	

}

void Carto_Scan(){
	
	
}


void Carto_map_addsubmap(Carto_Map * map, Carto_subMap * submap){
	LIST_FOR_MAP * n;
	if(map==NULL)
		return ;
	
	if(submap==NULL)
		return;
		
	if(0 == Carto_map_getSubMap(map,submap->X ,submap->Y))
		return;
	
	n = malloc(sizeof(LIST_FOR_MAP));
	n->point 	= submap;
	n->next		= map->list;
	map->list = n;
	
}

LIST_FOR_MAP * Carto_map_getSubMap(Carto_Map *map, int x ,int y){
LIST_FOR_MAP * i;
	if(map==NULL)
		return 0;
	if(map->list == NULL)
		return 0;
	
	i = map->list;
	while(i->point->X != x && i->point->Y != y){
		i = i->next;
		if(i==NULL)
				return 0;
	}
	
	return i;
}


Carto_data_Type Carto_map_get(Carto_Map*  map,int x, int y)
{
	//(45,69) (1,2)(13,0)(3)
	LIST_FOR_MAP * m =Carto_map_getSubMap(map,x/32,y/32);
	Carto_subMap * a;
	if(m==0)
		return INCONUE;
	
	 a = m->point;
	
	if(a==0)
		return INCONUE;
	
	if(a->status == IS_NOT_INIT)
		return INCONUE;
	x=x%32;
	y=y%32;
	
	return Carto_data_split(a->data[x][y/4],y%4);
}

Carto_order * Carto_order_build(Carto_order_list action,unsigned int time){
	Carto_order * ret =malloc(sizeof(Carto_order));
	ret->ordre = action;
	ret->time = time;
	ret->state = TODO;
	ret->next = NULL;
	ret->event = NONE;
	return ret;
}


void Carto_order_add(Carto_order* next){
	if(theLast == NULL || theLast->ordre == WAIT ){
		GLOBAL_VAR_MAP->evalbot->order = next;
		theLast = GLOBAL_VAR_MAP->evalbot->order;
	}else{
		theLast->next = next;
		theLast = next;
	}
}

void Carto_order_interprete(Carto_order * order){
		
	if(order == NULL )return;
	
	if(order->state == DOING){
		return;
	}
	
	if(order->state == PB){
		Carto_order_actualise(GLOBAL_VAR_MAP->evalbot);
		return;
	}
	
	if(order->state == DONE){
		Carto_order_actualise(GLOBAL_VAR_MAP->evalbot);
		
		return;
	}

		
	
		switch(order->ordre){
			
			case GO_UP:
				MotorDir(LEFT_SIDE,FORWARD);
				MotorDir(RIGHT_SIDE,FORWARD);
				MotorRun(LEFT_SIDE);
				MotorRun(RIGHT_SIDE);
			break;
			case GO_BACK:
				MotorDir(LEFT_SIDE,FORWARD);
				MotorDir(RIGHT_SIDE,FORWARD);
				MotorDir(LEFT_SIDE,REVERSE);
				MotorDir(RIGHT_SIDE,REVERSE);
				MotorRun(LEFT_SIDE);
				MotorRun(RIGHT_SIDE);
			break;
			case TURN_LEFT:
				MotorDir(LEFT_SIDE,FORWARD);
				MotorDir(RIGHT_SIDE,FORWARD);
				MotorDir(LEFT_SIDE,REVERSE);
				MotorRun(LEFT_SIDE);
				MotorRun(RIGHT_SIDE);
			break;
			case TURN_RIGHT:
				MotorDir(LEFT_SIDE,FORWARD);
				MotorDir(RIGHT_SIDE,FORWARD);
				MotorDir(RIGHT_SIDE,REVERSE);
				MotorRun(LEFT_SIDE);
				MotorRun(RIGHT_SIDE);
			break;
			case WAIT:
				MotorStop(LEFT_SIDE);
				MotorStop(RIGHT_SIDE);
			break;	
		}
		
		order->state = DOING;
}


void Carto_map_set(Carto_Map * map ,int x,int y , Carto_data_Type data){
	
	LIST_FOR_MAP * m = Carto_map_getSubMap(map,x/32,y/32);
	Carto_subMap * a;
	if(m==0)
		return ;
	
	 a= m->point;

	if(a==0)
		return ;
	
	if(a->status == IS_NOT_INIT)
		return ;
	
	Carto_data_change(&(a->data[x][y/4]),data,y%4);
	
}

char isScan(Carto_Map * map ,int x ,int y){
return 0;
}


void Carto_evalbot_scan(Carto_Map * map ,int x ,int y){
	/* on go a la possition decale de 5 soit en 
	(25,0)
	(4,0)
	(0,25)
	(0,4)
	(0,0)
	(0,0)
	(25,0)
	(25,0)
	*/
	
}
int* Carto_evalbot_spiral(int n);

Carto_order* carto_evalbot_rotation(int n ){
	
	int ang = GLOBAL_VAR_MAP->evalbot->angle;
	int a = n - ang;
	a =( a + A360 + A360)%A360;
	if(a ==  A90 || a ==  -A270){
			
			return Carto_order_build(TURN_RIGHT,A90);
	}
	if(a ==	-A90  || a== -A270){
			return Carto_order_build(TURN_LEFT,A90);
	}
	if(a == A180 ||a == -A180){
			return Carto_order_build(TURN_RIGHT,A180);
	}

	return Carto_order_build(GO_BACK,1);;
	
}

void carto_evalbot_generate_instruction(int * possitioToGo){
	
	//int*possitioToGo = Carto_evalbot_spiral( GLOBAL_VAR_MAP->evalbot->spiralCounter);
	if(
		possitioToGo[0]==GLOBAL_VAR_MAP->evalbot->X &&
		possitioToGo[1]==GLOBAL_VAR_MAP->evalbot->Y )
	{
		return ;
	}
	
	if(possitioToGo[0]<GLOBAL_VAR_MAP->evalbot->X){
		carto_evalbot_rotation(270);
	}else	if(possitioToGo[0]>GLOBAL_VAR_MAP->evalbot->X){
		carto_evalbot_rotation(90);
	}else if( possitioToGo[1]<GLOBAL_VAR_MAP->evalbot->Y){
		carto_evalbot_rotation(180);
	}else if( possitioToGo[1]>GLOBAL_VAR_MAP->evalbot->Y){
		carto_evalbot_rotation(0);
	}
}



int* Carto_evalbot_spiral(int n){
    // given n an index in the squared spiral
    // p the sum of point in inner square
    // a the position on the current square
    // n = p + a

    double r = floor((sqrt(n + 1) - 1) / 2) + 1;

    // compute radius : inverse arithmetic sum of 8+16+24+...=
    int p = (8 * r * (r - 1)) / 2;
    // compute total point on radius -1 : arithmetic sum of 8+16+24+...

    int en =(int) r * 2;
    // points by face

    int a =(int) (1 + n - p) % ((int)(r * 8));
    // compute de position and shift it so the first is (-r,-r) but (-r+1,-r)
    // so square can connect

		int* pos = malloc(sizeof(int)*3);
    pos[0] = 0;
		pos[1] = 0;
		pos[2] = r;
    switch ((int)floor(a / (r * 2))) {
        // find the face : 0 top, 1 right, 2, bottom, 3 left
        case 0:
            {
                pos[0] = a - r;
                pos[1] = -r;
            }
            break;
        case 1:
            {
                pos[0] = r;
                pos[1] = (a % en) - r;

            }
            break;
        case 2:
            {
                pos[0] = r - (a % en);
                pos[1] = r;
            }
            break;
        case 3:
            {
                pos[0] = -r;
                pos[1] = r - (a % en);
            }
            break;
    }
    
    return pos;
}
