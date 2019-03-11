#ifndef AHATCONFIG_H_
#define AHATCONFIG_H_

#include <iostream>
#include <sstream>
#include <map>

#include <unistd.h>
#include <fcntl.h>

class AhatConfig
{
private:
	std::map<std::string, std::string> configmap;
	std::string trim(std::string str);

public:
	bool readConfig(std::string path);
	bool readConfig(char* path);

	std::string getConfig(std::string name);
	std::string getConfig(const char* name);

	bool setConfig(std::string name, std::string value);
	bool setConfig(const char* name, const char* value);
};

#endif
