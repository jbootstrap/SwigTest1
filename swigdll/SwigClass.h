#pragma once

#include <string>

class SwigClass
{
public:
	SwigClass();
	virtual ~SwigClass();
	int add2(int a, int b);
	std::wstring getString();
	static int getClassCount();
};

void setString(const std::wstring &s);

int getClassCount();
