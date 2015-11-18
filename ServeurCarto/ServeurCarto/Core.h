#include <iostream>
#include <SFML/Graphics.hpp>
#include "Tilemap.cpp"
#include <list>

class Core
{

	public:

	TileMap Map[100];
	int indexTile = 0;
	std::string _status;
	int _nbObstacles;
	float _zone;




	Core();
	void Init();

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
	TileMap getMap(int i);

	void loop();
	void doUpdate();
};

