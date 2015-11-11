#ifndef __CARTO__DEF
#define __CARTO__DEF



// map de data 
/*
|30|30|30|30|30|
|30|30|30|30|30|
|30|30|30|30|30|
|30|30|30|30|30|
|30|30|30|30|30|
*/

//map => sub map 30

#define A0 		0
#define	A90		7
#define A180	14
#define A270	21



typedef enum{
	EVALBOT	=	0x00	,//2b00
	OBSTACL	=	0x01	,//2b01
	INCONUE	=	0x02	,//2b10
	VIDE		=	0x03	,//0b11
}Carto_data_Type;


typedef enum{
	SAME_AS_SERVEUR	,
	DIFF_TO_SERVEUR	,
	IS_NOT_INIT			,
	CAN_BE_DEST			,
}Carto_subMap_status;



typedef struct{
	char** data;		//data 256
	int X;
	int Y;
	Carto_subMap_status status;
} Carto_subMap;



typedef enum{
	GO_UP			,
	TURN_LEFT	,
	TURN_RIGHT,
	GO_BACK		,
	WAIT			,
}Carto_order_list;

typedef enum{
	TODO	,
	DOING	,
	DONE	,
	PB		,
}Carto_order_state;

typedef enum{
	NONE						=	0x00,
	OBSTABLE_LEFT 	= 0x01,
	OBSTABLE_RIGHT 	= 0x02,
	OBSTABLE_BOTH 	= 0x04,
	WEEL_LEFT_E 		= 0x08,
	WEEL_RIGHT_E 		= 0x10,
	WEEL_BOTH 			= 0x20,
}Carto_order_envent;

typedef struct NONAME_CARTO Carto_order_struct;

typedef struct NONAME_CARTO{
	Carto_order_list ordre;
	unsigned int time;// combien de fois on repete l'action
	Carto_order_state state;
	Carto_order_envent event;
	Carto_order_struct * next;
}Carto_order;



typedef struct{
	int X;
	int Y;
	unsigned char angle;
	Carto_order * order;
}Carto_Poss;

typedef struct NONAME2 LIST_FOR_MAP;

typedef struct NONAME2{
	Carto_subMap * point;
	LIST_FOR_MAP * next	;
}LIST_FOR_MAP;


typedef struct{
	Carto_Poss * evalbot;
	LIST_FOR_MAP * list	;
}Carto_Map;


//GLOBAL VAR EXEPTION ONLY//
static Carto_Map * GLOBAL_VAR_MAP;
//GLOBAL VAR EXEPTION ONLY//

void Carto_map_set(Carto_Map * map ,int x,int y , Carto_data_Type data);
Carto_Map* Carto_InitCarto(void);
Carto_order * Carto_order_build(Carto_order_list action,unsigned int time);
void Carto_order_add(Carto_order * g,Carto_order* next);
void Carto_order_interprete(Carto_order * order);
Carto_Poss* Carto_cons_Poss(int x,int y,unsigned char angle);
void Carto_GoTo(Carto_Poss * poss,Carto_Poss* goTo);
Carto_subMap* Carto_subMap_build(int x,int y,Carto_Map * map);
void Carto_subMap_set(int x , int y ,Carto_Map  * map);
void Carto_map_addsubmap(Carto_Map * map, Carto_subMap * submap);
LIST_FOR_MAP * Carto_map_getSubMap(Carto_Map* map, int x ,int y);
void Carto_evalbot_update_data(Carto_Map *  map);
#endif
