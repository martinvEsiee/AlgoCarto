/*#include <iostream>
#include <string>
#include <list>
#include <vector>
#include "Tilemap.cpp"
#include <SFML/Graphics.hpp>


class Data
{

	public:
	TileMap Map[100];
	int indexTile = 0;
	std::list<std::vector<int>> _listTiles;
	std::list<std::vector<int>> _indexPositions;

	Data()
	{




	}


	void addTile(std::vector<int> tile, std::vector<int> newPos)
	{
		_listTiles.push_back(tile);
		_indexPositions.push_back(newPos);


		if (!Map[indexTile].load("tileset.png", sf::Vector2u(8, 8), tile.data(), 10, 10))
			std::cout << "error TileSet " << indexTile << std::endl;


		Map[indexTile].move(newPos.data()[0] * 80, newPos.data()[1] * 80);
		indexTile++;
	}

	TileMap* getMap()
	{

		return Map;
	}

	 void doUpdate()
	{
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

		std::vector<int> indexMain5 = { 4, 4 };
		addTile(levelMain, indexMain5);


	}



}*/