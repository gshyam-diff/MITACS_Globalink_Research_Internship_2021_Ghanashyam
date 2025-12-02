#!/usr/bin/env python3
from __future__ import print_function

import matplotlib.pyplot as plt
import numpy as np
import rospy
import math
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
from rospy.numpy_msg import numpy_msg

from six.moves import input

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg

try:
    from math import pi, tau, dist, fabs, cos
except:  # For Python 2 compatibility
    from math import pi, fabs, cos, sqrt

    tau = 2.0 * pi

    def dist(p, q):
        return sqrt(sum((p_i - q_i) ** 2.0 for p_i, q_i in zip(p, q)))

def plan_cartesian_path(move_group, display_trajectory_publisher, plan, waypoints):
       
    wpose = move_group.get_current_pose().pose
      
    (plan, fraction) = move_group.compute_cartesian_path(
        waypoints, 0.01, 0.0  # waypoints to follow  # eef_step
    )  

    display_trajectory = moveit_msgs.msg.DisplayTrajectory()
    display_trajectory.trajectory_start = robot.get_current_state()
    display_trajectory.trajectory.append(plan)

    display_trajectory_publisher.publish(display_trajectory)
    
    move_group.execute(plan, wait=True)


def rot_callback(msg):
    
    global point_cloud
    point_cloud = msg
    	
    for p in pc2.read_points(point_cloud, field_names = ("x", "y", "z", "r", "g", "b"), skip_nans=True):
    	x.append(p[0])
    	y.append(p[1])
    	z.append(p[2])
    	if rospy.is_shutdown():
    		break
    			
    xyz = np.zeros([len(x), 3])
    
    for i in range(len(x)):
        xyz[i][0] = x[i]
        xyz[i][1] = y[i]
        xyz[i][2] = z[i]

    waypoints = []
    scale = 1

   # wpose.position.x += scale * xyz[0][0]
    wpose.position.y += scale * xyz[0][1]  # and sideways (y)
   # wpose.position.z -= scale * xyz[0][2]  # First move up (z)

    waypoints.append(copy.deepcopy(wpose))

    plan_cartesian_path(move_group, display_trajectory_publisher, plan, waypoints)

    pcl_output = o3d.geometry.PointCloud()
    pcl_output.points = o3d.utility.Vector3dVector(xyz)
        
    pub.publish(pcl_output)

if __name__ == '__main__':

    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node("move_group_python_interface_tutorial", anonymous=True)

    robot = moveit_commander.RobotCommander()

    scene = moveit_commander.PlanningSceneInterface()

    group_name = "arm"
    move_group = moveit_commander.MoveGroupCommander(group_name)

    display_trajectory_publisher = rospy.Publisher(
        "/move_group/display_planned_path",
        moveit_msgs.msg.DisplayTrajectory,
        queue_size=20,
    )
        
    planning_frame = move_group.get_planning_frame()
    print("============ Planning frame: %s" % planning_frame)
  
    eef_link = move_group.get_end_effector_link()
    print("============ End effector link: %s" % eef_link)
      
    group_names = robot.get_group_names()
    print("============ Available Planning Groups:", robot.get_group_names())

    print("============ Printing robot state")
    print(robot.get_current_state())
    print("")
        
    pub_for_nxt_rot = rospy.Publisher("/pcl_output", PointCloud2, queue_size=10)

    sub_to_rotpcd = rospy.Subscriber('/pcl_rotated', PointCloud2, rot_callback);

    rospy.sleep(1)