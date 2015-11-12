#pragma once

#include <xbee.h>
#include <string>

class Server
{
private:
	xbee*		_xbee;
	xbee_con*	_connection;

public:
	Server(void);
	~Server(void);

	bool	Init(const std::string& port);
	bool	StartConnection(void);
	bool	EndConnection(void);

	bool	Send(const std::string& data);
	bool	Listen();
};

