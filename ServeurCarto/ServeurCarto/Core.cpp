#include "Core.h"
#include <SFML/Graphics.hpp>

Core::Core()
{
	foo = new IHM();
	_status = "Init";
	_nbObstacles = 0;
	_zone = 0.0;
}



IHM* Core::getIHM()
{

	return Core::foo;
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

int* toArray(std::vector<int> tile)
{
	return tile.data();

}
//
//void Core::loop()
//{
//	
//	while (foo->isOpen())
//	{
//
//		foo->Render(Map);
//
//	}
//
//
//}