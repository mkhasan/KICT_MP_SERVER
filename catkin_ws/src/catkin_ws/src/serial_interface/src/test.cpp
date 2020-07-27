

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "serial_interface/serial.h"

#include <iostream>

#include <mosquittopp.h>
using namespace std;

class DataManager : public mosqpp::mosquittopp
{

	bool connected;

public:
	DataManager(const char *id, const char *host, int port) {

		int keepalive = 60;

			/* Connect immediately. This could also be done by calling
			 * mqtt_tempconv->connect(). */
		connect(host, port, keepalive);

	}
	~DataManager() {

	}


private:

	static int sockfd;

};


void chatterCallback(const std_msgs::String::ConstPtr & msg) {
	ROS_INFO("I heard : [%s]", msg->data.c_str());


	//msg = (std_msgs::String::Ptr) 0;


}

int main(int argc, char **argv) {
	ros::init(argc, argv, "serial_interface");

	//DataManager dataManager("my_id", "127.0.0.1", 1883);


	const char *port = "/dev/ttyUSB0";
	//ros::Duration(0.5).sleep();
	uint32_t baud = 9600;

	try {
		serial::Serial my_serial(port, baud, serial::Timeout::simpleTimeout(1000));

		char test_string[100] = "1ME\r";

		size_t bytes_wrote = my_serial.write(test_string);
		//ros::Duration(0.5).sleep();
		sleep(1);
		strcpy(test_string, "1FL20000\r");
		my_serial.write(test_string);
		sleep(1);
		//ros::Duration(0.5).sleep();

		strcpy(test_string, "1FD\r");
		my_serial.write(test_string);
		cout << "Is the serial port open?";

		if(my_serial.isOpen())
			cout << " Yes." << endl;
		else
			cout << " No." << endl;
	}

	catch(const exception &e) {
		cout << e.what() << endl;
		return 0;

	}

	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("test_msg", 1000, chatterCallback);
	ros::spin();
	return 0;

}

