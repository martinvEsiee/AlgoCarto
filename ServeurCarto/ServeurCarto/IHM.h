#include <iostream>
#include <string>
#include <list>
#include <vector>
#include <SFML/Graphics.hpp>
#include "Core.h"

class IHM
{

private:

	Core* c;
	int _valeur; // valeur de la 
	sf::Text text;
	sf::Text status;
	sf::Text zone;
	sf::Text nbObstacles;
	sf::Font font;
	//sf::RenderWindow window;
	//sf::RenderWindow window2;
	//added 0311

	





public:

	IHM();
	//IHM(int i, std::string s, int nb, float z);
	void Render( sf::RenderWindow window, sf::RenderWindow window2);
	bool isOpen(sf::RenderWindow window);
	int getValeur();
	void setValeur(int gvaleur);
	Core* getCore();
	int mainIHM(Core* c);
	void addTile(std::vector<int> tile, std::vector<int> newPos);
};