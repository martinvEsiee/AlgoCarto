
//enum des angle
typedef struct{
		int nombre_avance;
		int degre_tour;
} MotorInfo;



void Motor_init();
void Motor_goUp();
void Motor_goDown();
void Motor_stop();
void Motor_rotation(/*enum angle*/);
void Motor_go();

