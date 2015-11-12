#include "Server.h"


Server::Server(void) :
	_xbee(nullptr),
	_connection(nullptr)
{

}


Server::~Server(void)
{
	if (_xbee)
		xbee_shutdown(_xbee);
}

bool
Server::Init(const std::string& port)
{
	xbee_err ret;

	//"\\\\.\\COM16"
	if ((ret = xbee_setup(&_xbee, "xbee2", port)) != XBEE_ENONE) {
		printf("ret: %d (%s)\n", ret, xbee_errorToStr(ret));
		return false;
	}
	return true;
}

bool
Server::StartConnection(void)
{
	xbee_err ret;

	if (_connection != nullptr)
		EndConnection();
	if ((ret = xbee_conNew(_xbee, &_connection, "Local AT", NULL)) != XBEE_ENONE) {
		printf("xbee_conNew: %d (%s)\n", ret, xbee_errorToStr(ret));
		return false;
	}
	return true;
}

bool
Server::EndConnection(void)
{
	xbee_err ret;

	if (_connection == nullptr)
		return false;
	if ((ret = xbee_conEnd(_connection)) != XBEE_ENONE) {
		printf("xbee_conEnd: %d (%s)\n", ret, xbee_errorToStr(ret));
		return false;
	}
	_connection = nullptr;
	return true;
}

bool
Server::Send(const std::string& data)
{
	xbee_err ret;

	xbee_conTx(_connection, NULL, data.c_str());
	return true;
}

bool
Server::Listen(void)
{
	xbee_err ret;


	return true;
}
