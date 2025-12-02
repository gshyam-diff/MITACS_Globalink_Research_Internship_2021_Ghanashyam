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
	'''
	Sample code to publish a pcl2 with python
	'''
	rospy.init_node('AugerPointCloud')
	pcl_pub = rospy.Publisher("/auger_pc", PointCloud2)
	rospy.loginfo("Initializing auger pcl2 publisher node...")
	#give time to roscore to make the connections
	rospy.sleep(1.)

	mesh = o3d.io.read_triangle_mesh("Auger.stl")
	pointcloud = mesh.sample_points_poisson_disk(50000)
	cloud_points = np.asarray(pointcloud.points) 
	
	#header
	header = std_msgs.msg.Header()
	header.stamp = rospy.Time.now()
	header.frame_id = 'map'
	
	#create pcl from points
	scaled_polygon_pcl = pcl2.create_cloud_xyz32(header, cloud_points.tolist())
	
	#publish    
	rospy.loginfo("publishing auger pointcloud.. !")
	pcl_pub.publish(scaled_polygon_pcl)
