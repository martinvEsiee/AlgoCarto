
/**
* Ce fichier permet d'envoyer des messages et de les receoirs.
*	
*
*/


//permet d'init la connection et le composant
int mess_init(void);

//test toute les fonctions
int mess_test(void);

//recupéré un caractére
char mess_get(void);

// met un caratére
int mess_set(char ch);

//recupére une string
int mess_getSting(void);

//met une string
int mess_setString(char* chs, int size);

