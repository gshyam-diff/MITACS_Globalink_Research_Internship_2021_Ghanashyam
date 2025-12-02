import numpy as np
from mpl_toolkits.mplot3d import Axes3D 
from rospy.numpy_msg import numpy_msg
import matplotlib.pyplot as plt 
import geomdl
from geomdl import fitting
from geomdl import BSpline
from geomdl import knotvector

def callback(xyz):

	# Sort 2D numpy array by 2nd Column
	sortedArr = xyz[xyz[:,2].argsort()]

	finalpoints = []
	for i in range(len(sortedArr)):
	    if i%15==0:
		finalpoints.append(sortedArr[i])

	trajpoints = np.array(finalpoints)

	# Create a 3-dimensional B-spline Curve
	curve = BSpline.Curve()

	# Set degree
	curve.degree = 3

	# Set control points
	curve.ctrlpts = trajpoints.tolist()

	# Set knot vector
	curve.knotvector = knotvector.generate(3, trajpoints.shape[0])

	# Set evaluation delta (controls the number of curve points)
	curve.delta = 0.0005

	# Get curve points (the curve will be automatically evaluated)
	evalpts = np.array(curve.evalpts)
	
	pub.publish(evalpts)

def TrajectoryGenerator() :

    	rospy.init_node('Trajectory')

    	cloud_sub = rospy.Subscriber("/intersection", numpy_msg(RGB), queue_size=10, callback)

    	rospy.spin()

if __name__ == '__main__':

    	pub = rospy.Publisher("/trajectory", numpy_msg(RGB), queue_size=10)

    	TrajectoryGenerator()
