#!/usr/bin/env python3

from __future__ import print_function

from tester_package.srv import *
import numpy as np
import rospy
import math
import sys
import std_msgs.msg
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pcl2

def handle_generate_angles(req):
    global pcd
    pcd = req.pcd

    x = []
    y = []
    z = []
    
    for p in pcl2.read_points(pcd, field_names = ("x", "y", "z"), skip_nans=True):
        x.append(p[0])
        y.append(p[1])
        z.append(p[2])
        if rospy.is_shutdown():
            break
        
    angle = np.arctan2(x[0], z[0])
    return GenerateAnglesResponse(angle)

def generate_angles_server():
    rospy.init_node('generate_angles_server')
    s = rospy.Service('generate_angles', GenerateAngles, handle_generate_angles)
    print("Ready to Generate Angles")
    rospy.spin()

if __name__ == '__main__':
    generate_angles_server()