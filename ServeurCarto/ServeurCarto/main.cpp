#include <SFML/Graphics.hpp>
#include "Server.h"

int main()
{
	Server	xbeeServer;

    sf::RenderWindow window(sf::VideoMode(200, 200), "SFML works!");
    sf::CircleShape shape(100.f);
    shape.setFillColor(sf::Color::Green);

	//Si com < 8 "COM2"
	//Sinon "\\\\.\\COM16", vive Windows
	xbeeServer.Init("COM4");
	xbeeServer.StartConnection();
    while (window.isOpen())
    {
		xbeeServer.Send("Data");
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
	xbeeServer.EndConnection();
    return 0;
}
