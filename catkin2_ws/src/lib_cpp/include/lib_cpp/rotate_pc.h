#ifndef ROTATE_PC_H
#define ROTATE_PC_H


// You can include your non-ROS libraries here
// Like standard c++ libraries, Eigen, PCL, OpenCV, etc.
// All libraries that you use should be listed here
#include <iostream>
#include <string>

// Included Eigen
#include "Eigen/Eigen"

// Included PCL modules
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/io/ply_io.h>
#include <pcl/conversions.h>


#include <pcl/PCLPointCloud2.h>
#include <pcl/console/parse.h>
#include <pcl/common/transforms.h>
#include <pcl/visualization/pcl_visualizer.h>


// Dfine constants
#define kMinAngle 0.1 

// define necessary structs e.g. if you have multiple outputs
struct MyOutput {
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud;
};

// Declare your library functions here
pcl::PointCloud<pcl::PointXYZ>::Ptr rotatePC(pcl::PointCloud<pcl::PointXYZ>::Ptr source_cloud, Eigen::Affine3f transform_2, double theta);


#endif





