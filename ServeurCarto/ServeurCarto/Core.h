#include <iostream>
#include "IHM.h"



class Core
{

private:
	IHM* foo = new IHM();

	TileMap Map[100];
	int indexTile = 0;
	std::string _status;
	int _nbObstacles;
	float _zone;


public :
	Core();
	void Init();



	IHM* getIHM();
	std::string getStatus();
	void setStatus(std::string gstatus);

	int getNbObstacles();
	void setNbObstacles(int gnbObstacles);

	float getZone();
	void setZone(float gzone);

	std::list<std::vector<int>> _listTiles;
	std::list<std::vector<int>> _indexPositions;

	void addTile(std::vector<int> tile, std::vector<int> newPos);
	int* toArray(std::vector<int>);


	void loop();

};

