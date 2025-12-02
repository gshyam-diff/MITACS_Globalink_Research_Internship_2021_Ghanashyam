#!/usr/bin/env python3


import open3d as o3d
import numpy as np
import rospy
import math
import sys
import std_msgs.msg
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pcl2

if __name__ == '__main__':

    pcdfile = o3d.io.read_point_cloud("/home/ghans/catkin2_ws/src/tester_package/src/red_list1.pcd")
    pcd_arr = np.asarray(pcdfile.points)

    for i in range(83):
        theta = np.arctan2(pcd_arr[i][0], pcd_arr[i][2]) * (180 / math.pi)
        print(theta)