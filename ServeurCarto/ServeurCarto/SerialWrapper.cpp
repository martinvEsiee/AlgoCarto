#include "SerialWrapper.h"


SerialWrapper::SerialWrapper(void)
{
	_hport = nullptr;
	_readBuffer = nullptr;
}


SerialWrapper::~SerialWrapper(void)
{
	if (_hport) {
		CloseHandle(_hport);
		_hport = nullptr;
	}
	if (_readBuffer) {
		delete[] _readBuffer;
		_readBuffer = nullptr;
	}
}

bool
SerialWrapper::Init(const CString& port)
{
	DCB				dcb;
	COMMTIMEOUTS	timeout;

	_port = port;
	_hport = CreateFile(
		_port,
		GENERIC_WRITE,
		0,
		NULL,
		OPEN_EXISTING,
		0,
		NULL);
	if (!GetCommState(_hport, &dcb))
		return false;
	dcb.BaudRate = CBR_115200;
	dcb.ByteSize = 8;
	dcb.Parity = NOPARITY;
	dcb.StopBits = ONESTOPBIT;
	if (!SetCommState(_hport, &dcb))
		return false;
	timeout.ReadIntervalTimeout = MAXDWORD; 
	timeout.ReadTotalTimeoutMultiplier = 0;
	timeout.ReadTotalTimeoutConstant = 0;
	timeout.WriteTotalTimeoutMultiplier = 0;
	timeout.WriteTotalTimeoutConstant = 0;
	if (!SetCommTimeouts(_hport, &timeout))
		return false;

	SetCommMask(_hport, EV_RXCHAR | EV_ERR);
	_readBuffer = new(std::nothrow) BYTE[BUFF_SIZE];
	if (!_readBuffer)
		return false;
	return true;
}

bool
SerialWrapper::Write(const CString& data)
{
	DWORD	len = static_cast<DWORD>(data.GetLength());
	DWORD	bWritten;

	bool retVal = WriteFile(_hport, data, len, &bWritten, NULL);
	if (bWritten < len)
		len++;// Handle Incomplete Write
	return retVal;
}

DWORD
SerialWrapper::Read(CString& data)
{
	DWORD dwBytesTransferred;
	DWORD dwCommModemStatus; 

	WaitCommEvent(_hport, &dwCommModemStatus, 0); //wait for character
	if (dwCommModemStatus & EV_RXCHAR)
		ReadFile(_hport, _readBuffer, BUFF_SIZE, &dwBytesTransferred, 0);
	else if (dwCommModemStatus & EV_ERR)
		return 0;//Error;
	CString ret((LPCSTR)&_readBuffer, dwBytesTransferred);
	data.Append(ret);
	return dwBytesTransferred;
}