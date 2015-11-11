#include "IHM.h"
#include <SFML/Graphics.hpp>


IHM::IHM()
{
	valeur = 42;

}

IHM::IHM(int i)
{
	valeur = i;

}

int IHM::getValeur()
{
	return valeur;
}

void IHM::Init()
{

	sf::RenderWindow window(sf::VideoMode(200, 200), std::to_string(valeur));
	sf::CircleShape shape(100.f);
	shape.setFillColor(sf::Color::Green);

	while (window.isOpen())
	{
		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == sf::Event::Closed)
				window.close();
		}

		window.clear();
		window.draw(shape);
		window.display();
	}

}