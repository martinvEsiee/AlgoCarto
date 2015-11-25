#include "Core.h"
#include <errno.h>
#include <termios.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <SFML/System.hpp>

Core::Core()
{
std::cout << "CORECREATEDDDDDDDDDDDDDDDDDDDDDDDD" << std::endl;
	_status = "Init";
	_nbObstacles = 0;
	_zone = 0.0;
	indexTile=0;

	file = open ("/dev/ttyUSB0", O_RDWR | O_NOCTTY | O_SYNC);		
	set_interface_attribs (file, B115200, 0);
	//set_blocking (file, 0);


	for(int i = 0; i < size_tm;i++)
	{
		for(int j =0; j<size_tm;j++)
		tab[i][j]=0;


	}


	
	oldx=size_tm/2;
	oldy=size_tm/2;

	if (!tabTile.load("./tileset.png", sf::Vector2u(4, 4), (int*)(tab), size_tm, size_tm))
		std::cout << "error TileSet " << indexTile << std::endl;




	if (!tabTile.load("./tileset.png", sf::Vector2u(4, 4), (int*)(tab), size_tm, size_tm))
		std::cout << "error TileSet " << indexTile << std::endl;

}

void Core::drawObstacle(int x, int y, int angle)
{
	std::cout<<"obstacle draw" << std::endl;
	switch(angle)
	{	
		
		case(0):
			for(int i = y-5; i < y+5;i++)
			{
				tab[x+6][i]=3;
				tab[x+7][i]=3;
				tab[x+8][i]=3;
			}
		break;

		case(7):
			for(int i = x-5; i < x+5;i++)
			{
				tab[i][y+6]=3;
				tab[i][y+7]=3;
				tab[i][y+8]=3;
			}
		break;

		case(14):
			for(int i = y-5; i < y+5;i++)
			{
				tab[x-6][i]=3;
				tab[x-7][i]=3;
				tab[x-8][i]=3;
			}
		break;

		case(21):
			for(int i = x-5; i < x+5;i++)
			{
				tab[i][y-6]=3;
				tab[i][y-7]=3;
				tab[i][y-8]=3;
			}
		break;


	}

		if (!tabTile.load("./tileset.png", sf::Vector2u(4, 4), (int*)(tab), size_tm, size_tm))
			std::cout << "error TileSet " << indexTile << std::endl;


}


void Core::drawEvalbot(int x, int y)
{

	for(int i = oldx-5; i < oldx+5;i++)
	{
		for(int j = oldy-5; j < oldy + 5; j++)
		tab[i][j] = 2;
	}
	std::cout << "evalbot cleared " << std::endl;
	oldx=x;
	oldy=y;

	for(int i = x-5; i < x+5;i++)
	{
		for(int j = y-5; j < y + 5; j++)
		tab[i][j] = 1;
	}

		if (!tabTile.load("./tileset.png", sf::Vector2u(4, 4),(int*)(tab), size_tm, size_tm))
		std::cout << "error TileSet " << indexTile << std::endl;
}


int Core::set_interface_attribs (int fd, int speed, int parity)
{
	struct termios tty;
	memset (&tty, 0, sizeof tty);
	if (tcgetattr (fd, &tty) != 0)
	{
		//error_message ("error %d from tcgetattr", errno);
		return -1;
	}

	cfsetospeed (&tty, speed);
	cfsetispeed (&tty, speed);

	tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8;     // 8-bit chars
	// disable IGNBRK for mismatched speed tests; otherwise receive break
	// as \000 chars
	tty.c_iflag &= ~IGNBRK;         // disable break processing
	tty.c_lflag = 0;                // no signaling chars, no echo,
	// no canonical processing
	tty.c_oflag = 0;                // no remapping, no delays
	tty.c_cc[VMIN]  = 0;            // read doesn't block
	tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

	tty.c_iflag &= ~(IXON | IXOFF | IXANY); // shut off xon/xoff ctrl

	tty.c_cflag |= (CLOCAL | CREAD);// ignore modem controls,
	// enable reading
	tty.c_cflag &= ~(PARENB | PARODD);      // shut off parity
	tty.c_cflag |= parity;
	tty.c_cflag &= ~CSTOPB;
	tty.c_cflag &= ~CRTSCTS;

	if (tcsetattr (fd, TCSANOW, &tty) != 0)
	{
		// error_message ("error %d from tcsetattr", errno);
		return -1;
	}





	return 0;
}

void Core::set_blocking (int fd, int should_block)
{
	struct termios tty;

	memset (&tty, 0, sizeof tty);
	if (tcgetattr (fd, &tty) != 0)
	{
		//error_message ("error %d from tggetattr", errno);
		return;
	}

	tty.c_cc[VMIN]  = should_block ? 1 : 0;
	tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

	if (tcsetattr (fd, TCSANOW, &tty) != 0)
		return;
	// error_message ("error %d setting term attributes", errno);
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

void Core::doAction()
{

if (sf::Keyboard::isKeyPressed(sf::Keyboard::Z))
{
    	write(file, "z",1);
	std::cout<<"Z pressed" << std::endl;
}
else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Q))
{
    	write(file, "q",1);
	std::cout<<"Q pressed" << std::endl;
}

else if (sf::Keyboard::isKeyPressed(sf::Keyboard::S))
{
    	write(file, "s",1);
	std::cout<<"S pressed" << std::endl;
}

else if (sf::Keyboard::isKeyPressed(sf::Keyboard::D))
{
    	write(file, "d",1);
	std::cout<<"D pressed" << std::endl;
}

}
void Core::addTile(std::vector<int> tile, std::vector<int> newPos)
{/*
	_listTiles.push_back(tile);
	_indexPositions.push_back(newPos);


	if (!Map[indexTile].load("./tileset.png", sf::Vector2u(8, 8), tile.data(), 10, 10))
		std::cout << "error TileSet " << indexTile << std::endl;


	Map[indexTile].move(newPos.data()[0] * 80, newPos.data()[1] * 80);
	indexTile++;*/
}

int* Core::toArray(std::vector<int> tile)
{
	//return tile.data();

}

TileMap Core::getMap(int i)
{

	//return Core::Map[i];
}

void Core::doUpdate()
{
//std::cout<<"Message Received"<<std::endl;



	int x = 50;
	int y = 50;
	int angle=0;

	char buffer0[1];

	char buffer[24];	
	char buffer2[5];
	char buffer3[5];
	char buffer4[5];

	read(file, buffer0,1);
	std::cout<<buffer0 ;
	if(buffer0[0] == '!')
	{
	usleep(25000);
	read(file, buffer,3);
	std::cout<<buffer << std::endl;
	
	//!POS:x:0000 y:0000 a:0000
	//!OBS:x:0000 y:0000 a:0000
	

	if(buffer[0] == 'P'||buffer[0] == 'O' )
	{
		read(file, buffer2,3);
		buffer2[3] = '\n';
		std::cout<<buffer2 << std::endl;

		read(file, buffer2,4);
		buffer2[4] = '\n';
		std::cout<<buffer2 << std::endl;

		x=atoi(buffer2);

		read(file, buffer3,3);
		buffer2[3] = '\n';
		std::cout<<buffer3 << std::endl;

		read(file, buffer3,4);
		buffer3[4] = '\n';
		std::cout<<buffer3 << std::endl;
			
		y=atoi(buffer3);

		x+=size_tm/2;
		y+=size_tm/2;

		read(file, buffer4,3);
		buffer4[3] = '\n';
		std::cout<<buffer4 << std::endl;

		read(file, buffer4,4);
		buffer4[4] = '\n';
		std::cout<<buffer4 << std::endl;

		angle=atoi(buffer4);

		this->drawEvalbot(x,y);
	
		if(buffer[0] == 'O')
		{
			this->drawObstacle(x,y,angle);
		}
		std::cout<<" xTROUVE = " << x <<std::endl;
		std::cout<<" yTROUVE = " << y <<std::endl;


	}


	else
	return;		


	

	}
	


	


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

