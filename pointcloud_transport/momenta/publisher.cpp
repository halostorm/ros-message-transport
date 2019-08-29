#include <ros/ros.h>
#include <ros/console.h>
#include <log4cxx/logger.h>
#include <sensor_msgs/PointCloud.h>
#include <message_transport/message_transport.h>
#include "numpoints.h"
#include "bz2_transport/bz2_publisher.h"
#include "bz2_transport/bz2_subscriber.h"

class PointCloudBz2Publisher
{
protected:
	ros::NodeHandle n_;
	bz2_transport::BZ2Publisher<sensor_msgs::PointCloud> pcmsg_pub_;
	sensor_msgs::PointCloud pointcloud;

public:
	PointCloudBz2Publisher(ros::NodeHandle &n) : n_(n)
	{
		pcmsg_pub_.advertise(n_, std::string("pc_source"), 1);
	}
	~PointCloudBz2Publisher() {}

	int mainloop()
	{
		ROS_INFO("Entering main loop");
		ros::Rate loop_rate(3);
		while (ros::ok())
		{
			unsigned int i, num;
			num = numpoints + (rand() % 1000);
			pointcloud.header.stamp = ros::Time::now();
			ROS_INFO("Publishing %d points", num);
			pointcloud.points.resize(num);
			pointcloud.channels.resize(1);
			pointcloud.channels[0].name = "intensity";
			pointcloud.channels[0].values.resize(num);
			for (i = 0; i < num; i++)
			{
				pointcloud.points[i].x = i;
				pointcloud.points[i].y = i / 10;
				pointcloud.points[i].z = i / 100;
				pointcloud.channels[0].values[i] = i;
			}
			pcmsg_pub_.message_transport::SimplePublisherPlugin<sensor_msgs::PointCloud,bz2_transport::BZ2Packet>::publish(pointcloud);
			ROS_DEBUG("Published pointcloud at %f", pointcloud.header.stamp.toSec());
			ros::spinOnce();
			loop_rate.sleep();
		}
		return 0;
	}
};

void setDebugLevel(const std::string &logname)
{
	log4cxx::LoggerPtr logger = log4cxx::Logger::getLogger(logname);
	logger->setLevel(log4cxx::Level::getDebug());
	ros::console::notifyLoggerLevelsChanged();
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "test_publisher");
	ros::NodeHandle n;
	PointCloudBz2Publisher ic_bz2(n);
	// setDebugLevel("ros.pointcloud_transport");
	// setDebugLevel("ros.sharedmem_transport");
	ic_bz2.mainloop();
	return 0;
}
