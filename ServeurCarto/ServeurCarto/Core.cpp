#include "Core.h"


Core::Core()
{

	_status = "Init";
	_nbObstacles = 0;
	_zone = 0.0;
	
	
}





std::string Core::getStatus()
{

	return _status;
}
void Core::setStatus(std::string gstatus)
{
	_status = gstatus;
}
int Core::getNbObstacles()
{

	return _nbObstacles;
}
void Core::setNbObstacles(int gnbObstacles)
{
	_nbObstacles = gnbObstacles;
}
float Core::getZone()
{
	return _zone;
}
void Core::setZone(float gzone)
{
	_zone = gzone;
}

void Core::addTile(std::vector<int> tile, std::vector<int> newPos)
{
	_listTiles.push_back(tile);
	_indexPositions.push_back(newPos);


	if (!Map[indexTile].load("tileset.png", sf::Vector2u(8, 8), tile.data(), 10, 10))
		std::cout << "error TileSet " << indexTile << std::endl;


	Map[indexTile].move(newPos.data()[0] * 80, newPos.data()[1] * 80);
	indexTile++;
}

int* Core::toArray(std::vector<int> tile)
{
	return tile.data();

}

TileMap Core::getMap(int i)
{

	return Core::Map[i];
}

void Core::doUpdate()
{
	//std::vector<int> levelMain
	//{
	//	2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
	//	0, 1, 1, 1, 1, 1, 1, 0, 0, 0,
	//	1, 1, 0, 0, 0, 0, 0, 0, 3, 3,
	//	0, 1, 0, 0, 2, 0, 3, 3, 3, 0,
	//	0, 1, 1, 0, 3, 3, 3, 0, 0, 0,
	//	0, 0, 1, 0, 3, 0, 2, 2, 0, 0,
	//	2, 0, 1, 0, 3, 0, 2, 2, 2, 0,
	//	0, 0, 1, 0, 3, 2, 2, 2, 0, 0,
	//	0, 0, 1, 1, 1, 1, 1, 2, 3, 0,
	//	0, 0, 1, 1, 1, 1, 1, 2, 3, 0,
	//};

	//std::vector<int> indexMain5 = { 10, 10 };
	//addTile(levelMain, indexMain5);



	////TODO
	//Update le statut,
	//	Update le nb d'obstacles si nouveaux
	//	update la map en yn ajoutant une trame.


}

