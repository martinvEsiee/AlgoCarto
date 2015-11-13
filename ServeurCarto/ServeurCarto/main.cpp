#include <String>
#include "Core.h"
#include <vector>


int main()
{
	Core* a = new Core();
	
	
	std::vector<int> levelMain
	{
		0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
		0, 1, 1, 1, 1, 1, 1, 0, 0, 0,
		1, 1, 0, 0, 0, 0, 0, 0, 3, 3,
		0, 1, 0, 0, 2, 0, 3, 3, 3, 0,
		0, 1, 1, 0, 3, 3, 3, 0, 0, 0,
		0, 0, 1, 0, 3, 0, 2, 2, 0, 0,
		2, 0, 1, 0, 3, 0, 2, 2, 2, 0,
		0, 0, 1, 0, 3, 2, 2, 2, 0, 0,
		0, 0, 1, 1, 1, 1, 1, 2, 3, 0,
		0, 0, 1, 1, 1, 1, 1, 2, 3, 0,
	};


	std::vector<int> indexMain =  {0,1};
	std::vector<int> indexMain2 = {0,2};
	std::vector<int> indexMain3 = {1,1};
	std::vector<int> indexMain4 = {1,2};
	std::vector<int> indexMain5 = {0,0};


	a->addTile(levelMain, indexMain);
	a->addTile(levelMain, indexMain2);
	a->addTile(levelMain, indexMain3);
	a->addTile(levelMain, indexMain4);
	a->addTile(levelMain, indexMain5);
	
	
	//a->Init();






    return 0;
}