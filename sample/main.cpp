#include <iostream>

#include "ahatconfig.h"

using namespace std;

int main()
{
	AhatConfig config;
	config.readConfig(NULL); //binary path .cfg file read
				 //config.readConfig("/home/ahat/ahat.cfg");

	config.setConfig("config7", "44444");

	cout<<config.getConfig("config1").c_str()<<"\n";
	cout<<config.getConfig("config4").c_str()<<"\n"; //return string()

	cout<<config.getConfig("config6").c_str()<<"\n";
	config.setConfig("config6", "999");
	cout<<config.getConfig("config6").c_str()<<"\n";

	cout<<config.getConfig("config7").c_str()<<"\n";

	return 0;
}

