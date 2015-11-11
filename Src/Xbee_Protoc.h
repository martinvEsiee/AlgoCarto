#ifndef XBEE_PRTOTOC
#define XBEE_PROTOC

typedef enum{
	TO_RECEP,
	RECEP,
	TO_SEND,
	SEND,
	CREATED,
	TO_INTER,
	INTER,
	DO,
	CANCEL,
	ERROR
}Xbee_Mess_State;

typedef enum{
	PING
}Xbee_Mess_Type;


typedef struct {
	unsigned char id; 
	Xbee_Mess_Type type;
	unsigned char size;
	char * mess;
	Xbee_Mess_State state;
} Xbee_Mess;

typedef struct NONAME Xbee_protoc_cont;

typedef struct NONAME {
	Xbee_Mess * data; 
	Xbee_protoc_cont * next;
	Xbee_protoc_cont * previous;
}Xbee_protoc_cont;


typedef struct {	
	Xbee_protoc_cont* PRIV_firstOut;
	Xbee_protoc_cont* PRIV_lastIn;
	
} Xbee_protoc_fifo;

typedef struct {
	Xbee_protoc_fifo * send;
	Xbee_protoc_fifo * receive;
	int id;
}Xbee;


Xbee * Xbee_protoc_init(void);

Xbee_Mess * //Xbee_mess_build(int id, char * mess,unsigned char size);
Xbee_mess_build(unsigned char id,Xbee_Mess_Type type, char * mess,unsigned char size);

Xbee_protoc_fifo* Xbee_fifo_build(void);
void 				Xbee_Add_Message(Xbee_protoc_fifo * fifo,Xbee_Mess * messToAdd);
Xbee_Mess* 	Xbee_Get_Message(Xbee_protoc_fifo * fifo);
Xbee_Mess* 	Xbee_Pop_Message(Xbee_protoc_fifo* fifo);

void Xbee_Send_Message(Xbee_protoc_fifo * send);
void Xbee_Rece_Message(Xbee_protoc_fifo * send,unsigned char pID);


void test(void);

#endif
