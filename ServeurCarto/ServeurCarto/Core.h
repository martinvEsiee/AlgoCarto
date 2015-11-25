#include <iostream>
#include <SFML/Graphics.hpp>
#include "Tilemap.cpp"
#include <list>
#define size_tm 200

class Core
{

	public:


	
	int tab[size_tm][size_tm];
	
	int oldx;
	int oldy;
	int angle;
	TileMap tabTile;








	void doAction();
	void drawObstacle(int x, int y, int angle);
	void drawEvalbot(int x, int y);
	//TileMap Map[100];
	int indexTile;
	std::string _status;
	int _nbObstacles;
	float _zone;

	int file;


	int set_interface_attribs (int fd, int speed, int parity);
	void set_blocking (int fd, int should_block);

	Core();
	void Init();

	std::string getStatus();
	void setStatus(std::string gstatus);

	int getNbObstacles();
	void setNbObstacles(int gnbObstacles);

	float getZone();
	void setZone(float gzone);

	std::list<std::vector<int> > _listTiles;
	std::list<std::vector<int> > _indexPositions;

	void addTile(std::vector<int> tile, std::vector<int> newPos);
	int* toArray(std::vector<int>);
	TileMap getMap(int i);
	void doUpdate();
};

