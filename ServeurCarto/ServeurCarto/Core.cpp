#include "Core.h"

Core::Core()
{
	foo = new IHM();

}



void Core::Init()
{
	Core::foo->Init();
}