
/**
* Ce fichier permet d'envoyer des messages et de les receoirs.
*	
*
*/


//permet d'init la connection et le composant
int mess_init(void);

//test toute les fonctions
int mess_test(void);

//recup�r� un caract�re
char mess_get(void);

// met un carat�re
int mess_set(char ch);

//recup�re une string
int mess_getSting(void);

//met une string
int mess_setString(char* chs, int size);

