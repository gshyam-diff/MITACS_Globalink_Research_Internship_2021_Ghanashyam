#!/usr/bin/env python3

import matplotlib.pyplot as plt
import numpy as np
import rospy
import math
from rospy_tutorials.msg import Floats
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
from rospy.numpy_msg import numpy_msg

def scan_callback(msg):
	global point_cloud
	point_cloud = msg
	
	for p in pc2.read_points(point_cloud, field_names = ("x", "y", "z", "r", "g", "b"), skip_nans=True):
		x.append(p[0])
		y.append(p[1])
		z.append(p[2])
		if rospy.is_shutdown():
			break
			
	auger = np.zeros([len(x), 3])
	
	for i in range(len(x)):
		auger[i][0] = x[i]	
		auger[i][1] = y[i]
		auger[i][2] = z[i]
	
	pub.publish(auger)

if __name__ == '__main__':

	pub = rospy.Publisher("/auger", numpy_msg(Floats) , queue_size=10)

	rospy.init_node('PointCloudCollector')
	
	global x 
	global y
	global z
	x=[]
	y=[]
	z=[]

	rate = rospy.Rate(2)

	sub = rospy.Subscriber('/camera/depth/color/points', PointCloud2, scan_callback)

	rospy.sleep(1)
	
	rospy.spin()
