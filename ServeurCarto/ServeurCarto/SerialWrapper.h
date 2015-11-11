#pragma once

#include <atlstr.h>

class SerialWrapper
{
	static const UINT32	BUFF_SIZE = 1024;
	CString	_port;
	HANDLE	_hport;
	BYTE*	_readBuffer;

	public:
	SerialWrapper(void);
	~SerialWrapper(void);

	bool	Init(const CString& port);
	bool	Write(const CString& data);
	DWORD	Read(CString& data);
};

