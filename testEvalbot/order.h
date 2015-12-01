#ifndef def_order
#define def_order

typedef enum{
DO =1,
PB =2,
WAIT=3
} state_d;

typedef 
enum { 
	UP,
	BACK,
	RIGHT,
	LEFT
}order_d;

typedef 
enum {
	NONE_d 	= 0x00,
	LEFT_d 	= 0x01,
	RIGHT_d = 0x10,
	BOTH_d 	= 0x11
} cap_d;


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

extern t_possition * evalbot;
#endif
