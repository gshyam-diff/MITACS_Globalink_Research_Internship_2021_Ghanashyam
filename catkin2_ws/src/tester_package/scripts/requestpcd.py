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

def AngleCallback(msg):
    global pcd
    pcd = msg

    return pcd

def generate_angles_client(seam_sub):
    rospy.wait_for_service('generate_angles')
    try:
        generate_angles = rospy.ServiceProxy('generate_angles', GenerateAngles)
        resp1 = generate_angles(seam_sub)
        return resp1.angle
    except rospy.ServiceException as e:
        print("Service call failed : %s" %e)

if __name__ == '__main__':
    
    print("Requesting Angle")

    seam_sub = rospy.Subscriber("/pcl_rotated", PointCloud2, AngleCallback)

    print("Angle: %s"%(generate_angles_client(seam_sub)))

    rospy.spin()