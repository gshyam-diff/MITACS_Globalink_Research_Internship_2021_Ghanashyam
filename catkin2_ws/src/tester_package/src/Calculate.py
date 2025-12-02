#!/usr/bin/env python3

#import open3d as o3d
import numpy as np
import rospy
import math
import sys
import std_msgs.msg
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pcl2

def AngleCallback(msg):
    global pcd
    pcd = msg

    x = []
    z = []
    
    for p in pcl2.read_points(pcd, field_names = ("x", "z"), skip_nans=True):
        x.append(p[0])
        z.append(p[1])
        if rospy.is_shutdown():
            break
        
    angle = np.arctan2(x[0], z[0])
    
    print(angle)


if __name__ == '__main__':

    rospy.init_node('CalcAngle')

    seam_sub = rospy.Subscriber("/pcl_rotated", PointCloud2, AngleCallback)

    rospy.spin()


