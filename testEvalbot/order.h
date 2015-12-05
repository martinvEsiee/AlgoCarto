#ifndef def_order
#define def_order


//evalbot state
typedef enum{
DO =1,
PB =2,
WAIT=3
} state_d;


//diferent ordre
typedef 
enum { 
	UP,
	BACK,
	RIGHT,
	LEFT
}order_d;


// difeent detection
typedef 
enum {
	NONE_d 	= 0x00,
	LEFT_d 	= 0x01,
	RIGHT_d = 0x10,
	BOTH_d 	= 0x11
} cap_d;



// diferent information que l'evalbot sauvegarde
typedef 
struct{
	cap_d wheel;
	cap_d bumper;
	order_d ord;
	state_d state;
	int x;
	int y;
	int angle;
} t_possition;

// variable global qui permet a l'evalbot de connaitre ces information propre
extern t_possition * evalbot;
#endif
