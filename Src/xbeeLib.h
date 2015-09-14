
/*enum*/
typedef struct Xbee_mess;

typedef struct(
	char[100] message;
	/*enum de l'etape de traitement*/
	Xbee_mess previous;
	) Xbee_mess;


void Xbee_init();//nd
void Xbee_send();//nd
void Xbee_data();//nd
