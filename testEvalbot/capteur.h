#include "boards/ek-evalbot/drivers/sensors.h"
/*
* ce fichier contient tout les capteurs utilisé dans le projet
*
*/

//initialisation des bumpers
int bump_init(void);

// initialisation des led whell pour la detection de la rotatio des roues
int wheel_init(void);

//check si un ou les deux bumper son touch bumper est press
int bumper_check(void);

// met en place une interupton sur les capteurs
void bump_interuptFunction(tBumper a);

// il sagit de la function call lors d'une interup
void actionInt(char chact );
