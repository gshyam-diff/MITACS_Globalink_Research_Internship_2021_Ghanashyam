// include ROS libraries you need
#include <ros/ros.h>
#include "std_msgs/String.h"
#include "geometry_msgs/Vector3.h"

// include your library
#include "lib_cpp/rotate_pc.h"

// include ROS-dependent point cloud or PCL libraries here
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl_ros/transforms.h>
#include "tester_package/PcdAngle.h"


class cloudHandler
{
public:
    cloudHandler()
    {
        pcl_sub = nh.subscribe("pcd_publish", 10, &cloudHandler::cloudCB, this);
        pcl_pub = nh.advertise<tester_package::PcdAngle>("pcl_rotated", 1);
        pcl_PC = nh.advertise<sensor_msgs::PointCloud2>("pcl_rcloud", 1);
    }

    void cloudCB(const boost::shared_ptr<const tester_package::PcdAngle>& input)
    {
        pcl::PCLPointCloud2 pcl_pc2;
        ros::Rate rate(0.1);
        
        cout << "Inside" << endl;
        cout << "Angle: " << input->angle << endl;
        pcl_conversions::toPCL(input->pcd, pcl_pc2);

        pcl::PointCloud<pcl::PointXYZ>::Ptr source_cloud (new pcl::PointCloud<pcl::PointXYZ> ());
        pcl::fromPCLPointCloud2(pcl_pc2, *source_cloud);

        double theta = input->angle;

        Eigen::Affine3f transform_2 = Eigen::Affine3f::Identity();
        
        
        pcl::PointCloud<pcl::PointXYZ>::Ptr transformed_cloud = rotatePC(source_cloud, transform_2, theta);


        //pcl::toPCLPointCloud2(*transformed_cloud, pcl_pc2);
    	//pcl_pc2.header.frame_id = "point_cloud";

        sensor_msgs::PointCloud2 rotated_cloud;
        pcl::toROSMsg(*transformed_cloud.get(),rotated_cloud);
        rotated_cloud.header.frame_id = "point_cloud";

        tester_package::PcdAngle msg;
        msg.pcd = rotated_cloud;
        msg.angle = theta;
        cout << "Msg Rotated" << endl;

        pcl_pub.publish(msg);
        pcl_PC.publish(msg.pcd);
        rate.sleep();
    }

protected:
    ros::NodeHandle nh;
    ros::Subscriber pcl_sub;
    ros::Publisher pcl_pub;
    ros::Publisher pcl_PC;
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "pcd_transform");

    ROS_INFO("Node has been created!");
    cloudHandler handler;


    ros::spin();

    return 0;
}
