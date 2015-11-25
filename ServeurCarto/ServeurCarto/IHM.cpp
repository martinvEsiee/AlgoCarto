#include "IHM.h"
#include <string>
#include <SFML/Graphics.hpp>

IHM::IHM()
{
	_valeur = 42;
	c = new Core();
	if (!font.loadFromFile("Arial.ttf"))
	{
		//Nothing goes here...?
	}

	
	text.setFont(font);
	text.setString("Hello World");
	text.setCharacterSize(140);
	text.setColor(sf::Color::White);
	text.setPosition(0.0f, 0.0f);

	
	status.setFont(font);
	status.setString("status de l'évalbot : Vide");
	status.setCharacterSize(20);
	status.setColor(sf::Color::White);
	status.setPosition(10.0f, 0.0f);

	
	zone.setFont(font);
	zone.setString("zone découverte : " + 0);
	zone.setCharacterSize(20);
	zone.setColor(sf::Color::White);
	zone.setPosition(10.0f, 30.0f);

	
	nbObstacles.setFont(font);
	nbObstacles.setString("nbObstacles découvert : " + std::to_string(0));
	nbObstacles.setCharacterSize(20);
	nbObstacles.setColor(sf::Color::White);
	nbObstacles.setPosition(10.0f, 60.0f);







//	window = sf::RenderWindow(sf::VideoMode(600, 600), std::to_string(_valeur));
	//window.draw(status);
	//window.setView(view2);

	//window2 = sf::RenderWindow(sf::VideoMode(400, 400), "Rendu Evalbot");





	//window.clear(sf::Color(211, 211, 211));

}



// Getters, Stters

int IHM::getValeur()
{
	return _valeur;
}

void IHM::setValeur(int gvaleur) {
	_valeur = gvaleur;
}

void IHM::addTile(std::vector<int> tile, std::vector<int> newPos)
{
	c->addTile(tile,newPos);
}




void IHM::Render(sf::RenderWindow window, sf::RenderWindow window2)
{


		

			// on gère les évènements
			sf::Event event;
			while (window.pollEvent(event))
			{
				if (event.type == sf::Event::Closed)
					window.close();
			}

			

			// on dessine le niveau
			window.clear(sf::Color(200, 200, 200));
			

			/*
			for (int i = 0; i < 100;i++)
				window.draw(grille[i]);*/
			
			window.display();

			window2.draw(status);
			window2.draw(zone);
			window2.draw(nbObstacles);
			window2.display();


}



bool IHM::isOpen(sf::RenderWindow window)
{

	return window.isOpen();

}

Core* IHM::getCore()
{
	return c;
}

void IHM::fillIn()
{/*
	std::vector<int> levelMain
	{
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 1, 0, 0, 0, 0, 0,
		0, 0, 0, 1, 2, 1, 0, 0, 0, 0,
		0, 0, 1, 2, 3, 2, 1, 0, 0, 0,
		0, 0, 0, 1, 2, 1, 0, 0, 0, 0,
		0, 0, 0, 0, 1, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	};
	
	for (int i = 0; i < 10; i++)
	{
		for (int j = 0; j < 10; j++)
		{
			std::vector<int> indexMain = { i, j };
			addTile(levelMain, indexMain);
			
		}
	}



*/
}



int IHM::mainIHM(Core* c)
{
	sf::VideoMode vm(800, 800);
	std::string str(std::to_string(_valeur));
	sf::RenderWindow window(vm, str);
	sf::RenderWindow window2(sf::VideoMode(400, 400), "Rendu Evalbot");

	//sf::View view2(sf::Vector2f(300, 300), sf::Vector2f(600, 600));
	//view2.setViewport(sf::FloatRect(0.0f, 0.0f, 1.0f, 1.0f)); // prend une zone de 600*400
	//view2.zoom(2);


	window.draw(status);
	//window.setView(view2);
	window.clear(sf::Color(211, 211, 211));

	fillIn();
	bool t = true;

	while (window.isOpen())
	{
		/*// Appel au serveur
		if (t)
		{
			c->doUpdate(); // problem HERE
			std::cout << "Bonjour" << std::endl;
			t = false;
		}*/
		
		// Appel de la MaJ des données

	
		c->doUpdate();
		c->doAction();

		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == sf::Event::Closed)
				window.close();
		}



		// on dessine le niveau
		window.clear(sf::Color(200, 200, 200));


		
		//for (int i = 0; i < 100;i++)
		//	window.draw(c->getMap(i));

		window.draw(c->tabTile);


		window.display();

		window2.draw(status);
		window2.draw(zone);
		window2.draw(nbObstacles);
		window2.display();
	}





	return 0;
}
