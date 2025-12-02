#include<ros/ros.h>
#include<pcl/point_cloud.h>
#include<pcl_conversions/pcl_conversions.h>
#include<sensor_msgs/PointCloud2.h>
#include<pcl/io/pcd_io.h>
#include "tester_package/PcdAngle.h"

//The msg wiki page has a table showing what message types are deserialized to in Python and C++. Specifically, float64 is a double (C++) or float (Python).

int main(int argc, char **argv)
{
    ros :: init (argc, argv, "pcl_read");

    ROS_INFO("Started PCL read node");

    ros::NodeHandle nh;
    ros::Publisher pcl_pub = nh.advertise<tester_package::PcdAngle> ("pcd_publish_ang", 1);

    sensor_msgs::PointCloud2 output;
    tester_package::PcdAngle msg;
    pcl::PointCloud<pcl::PointXYZ> cloud;
    
    double angle = 0.9758414502011105;

    //Loading PCL file
    pcl::io::loadPCDFile ("/home/ghans/catkin2_ws/src/tester_package/src/red_list1.pcd", cloud);

    pcl::toROSMsg(cloud, output);
    output.header.frame_id = "point_cloud";
    msg.pcd = output;
    msg.angle = angle;

    ros::Rate loop_rate(1);
    while(ros::ok())
    {
        loop_rate.sleep();
        pcl_pub.publish(msg);
        ros::spinOnce();
    }

    return 0;
}