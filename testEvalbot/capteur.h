#include "boards/ek-evalbot/drivers/sensors.h"
int bump_init();
int wheel_init();
int bumper_check();
void bump_interuptFunction(tBumper a);
void actionInt(char chact );