// include the header file
#include "lib_cpp/rotate_pc.h"

pcl::PointCloud<pcl::PointXYZ>::Ptr rotatePC(pcl::PointCloud<pcl::PointXYZ>::Ptr source_cloud, Eigen::Affine3f transform_2, double theta)
{
    
  transform_2.translation() << 2.0, 0.0, 0.0;

  // The same rotation matrix as before; theta radians around Z axis
  transform_2.rotate (Eigen::AngleAxisf (theta, Eigen::Vector3f::UnitY()));

  // Executing the transformation
  pcl::PointCloud<pcl::PointXYZ>::Ptr transformed_cloud (new pcl::PointCloud<pcl::PointXYZ> ());
  // You can either apply transform_1 or transform_2; they are the same
  pcl::transformPointCloud (*source_cloud, *transformed_cloud, transform_2);

  return transformed_cloud;

}