#!/usr/bin/env python3

import rospy
from pyntcloud import PyntCloud 
from rospy.numpy_msg import numpy_msg
import numpy as np
from mpl_toolkits.mplot3d import Axes3D 
import matplotlib.pyplot as plt 
import pandas as pd
import os
import sys
import pdb
import open3d as o3d

def convertCloudFromRosToOpen3d(ros_cloud):
    
	# Get cloud data from ros_cloud
	field_names=[field.name for field in ros_cloud.fields]
	cloud_data = list(pc2.read_points(ros_cloud, skip_nans=True, field_names = field_names))

	# Check empty
	open3d_cloud = open3d.PointCloud()

	# Set open3d_cloud
	if "rgb" in field_names:
		IDX_RGB_IN_FIELD=3 # x, y, z, rgb

	# Get xyz
	xyz = [(x,y,z) for x,y,z,rgb in cloud_data ] # (why cannot put this line below rgb?)

	# Get rgb
	# Check whether int or float
	if type(cloud_data[0][IDX_RGB_IN_FIELD])==float: # if float (from pcl::toROSMsg)
	    rgb = [convert_rgbFloat_to_tuple(rgb) for x,y,z,rgb in cloud_data ]
	else:
	    rgb = [convert_rgbUint32_to_tuple(rgb) for x,y,z,rgb in cloud_data ]

	# combine
	open3d_cloud.points = open3d.Vector3dVector(np.array(xyz))
	open3d_cloud.colors = open3d.Vector3dVector(np.array(rgb)/255.0)
	else:
	xyz = [(x,y,z) for x,y,z in cloud_data ] # get xyz
	open3d_cloud.points = open3d.Vector3dVector(np.array(xyz))

	# return
	return open3d_cloud

def NumpyToPCD(xyz):
    """ convert numpy ndarray to open3D point cloud 
    Args:
        xyz (ndarray): 
    Returns:
        [open3d.geometry.PointCloud]: 
    """
	pcd = o3d.geometry.PointCloud()
	pcd.points = o3d.utility.Vector3dVector(xyz)
	return pcd

def Average(lst):
    	return sum(lst) / len(lst)

def isInside(circle_x, circle_y, rad, x, y):
     
    	# Compare radius of circle
    	# with distance of its center
    	# from given point
    	if ((x - circle_x) * (x - circle_x) + (y - circle_y) * (y - circle_y) <= rad * rad):
        	return True;
    	else:
        	return False;

def callback(ros_point_cloud):

	received_open3d_cloud = convertCloudFromRosToOpen3d(ros_point_cloud)
	pcd1 = PyntCloud.from_instance("open3d", received_open3d_cloud)
    
	# define hyperparameters
	k_n = 10
	thresh = 0.03

	pcd_np = np.zeros((len(pcd1.points),6))

	# find neighbors
	kdtree_id = pcd1.add_structure("kdtree")
	k_neighbors = pcd1.get_neighbors(k=k_n, kdtree=kdtree_id) 

	# calculate eigenvalues
	ev = pcd1.add_scalar_field("eigen_values", k_neighbors=k_neighbors)

	x = pcd1.points['x'].values 
	y = pcd1.points['y'].values 
	z = pcd1.points['z'].values 

	e1 = pcd1.points['e3('+str(k_n+1)+')'].values
	e2 = pcd1.points['e2('+str(k_n+1)+')'].values
	e3 = pcd1.points['e1('+str(k_n+1)+')'].values

	sum_eg = np.add(np.add(e1,e2),e3)
	sigma = np.divide(e1,sum_eg)
	sigma_value = sigma

	# visualize the edges
	sigma = sigma>thresh

	# Save the edges and point cloud
	thresh_min = sigma_value < thresh
	sigma_value[thresh_min] = 0
	thresh_max = sigma_value > thresh
	sigma_value[thresh_max] = 255

	pcd_np[:,0] = x
	pcd_np[:,1] = y
	pcd_np[:,2] = z
	pcd_np[:,3] = sigma_value

	xyz_load = np.delete(pcd_np, np.where(pcd_np[:,3] == 0), axis=0) 

	x=[]
	y=[]
	z=[]
	edgex = []
	edgey = []
	edgez = []
	for i in range(len(xyz_load)):
	    x.append(xyz_load[i][0])
	    y.append(xyz_load[i][1])
	    z.append(xyz_load[i][2])

	for i in range(len(x)):
	    if(isInside(Average(x), Average(y), max(x)/2, x[i], y[i]) and z[i]>5 and z[i]<95):
			edgex.append(x[i])
			edgey.append(y[i])
			edgez.append(z[i])

	xyz = np.zeros([len(edgex), 3])
	for i in range(len(edgex)):
	    xyz[i][0] = edgex[i]
	    xyz[i][1] = edgey[i]
	    xyz[i][2] = edgez[i]
	
	pub.publish(xyz)

def IntersectionDetector() :

    	rospy.init_node('Intersections')

    	cloud_sub = rospy.Subscriber("/auger_pc", PointCloud2, callback, queue_size=100000, buff_size=52428800)

    	rospy.spin()

if __name__ == '__main__':

    	pub = rospy.Publisher("/intersection", numpy_msg(RGB), queue_size=10)

    	IntersectionDetector()






