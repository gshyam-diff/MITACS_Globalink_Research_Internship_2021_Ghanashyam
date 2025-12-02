from __future__ import print_function
from six.moves import input

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

import open3d as o3d
import numpy as np
import math
import sys
import std_msgs.msg
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pcl2
import ros_numpy as rnp
from tester_package.msg import PcdAngle
from tf.transformations import quaternion_from_euler


def all_close(goal, actual, tolerance):
    """
    Convenience method for testing if a list of values are within a tolerance of their counterparts in another list
    @param: goal       A list of floats, a Pose or a PoseStamped
    @param: actual     A list of floats, a Pose or a PoseStamped
    @param: tolerance  A float
    @returns: bool
    """
    if type(goal) is list:
        for index in range(len(goal)):
            if abs(actual[index] - goal[index]) > tolerance:
                return False

    elif type(goal) is geometry_msgs.msg.PoseStamped:
        return all_close(goal.pose, actual.pose, tolerance)

    elif type(goal) is geometry_msgs.msg.Pose:
        return all_close(pose_to_list(goal), pose_to_list(actual), tolerance)

    return True


class MoveGroupPythonIntefaceTutorial(object):
    """MoveGroupPythonIntefaceTutorial"""

    def __init__(self):
        super(MoveGroupPythonIntefaceTutorial, self).__init__()
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node("move_group_python_interface_tutorial", anonymous=True)

        robot = moveit_commander.RobotCommander()

        scene = moveit_commander.PlanningSceneInterface()

        group_name = "arm"
        move_group = moveit_commander.MoveGroupCommander(group_name)

        display_trajectory_publisher = rospy.Publisher(
            "/display_planned_path", moveit_msgs.msg.DisplayTrajectory, queue_size=20
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
       
        self.box_name = ""
        self.robot = robot
        self.scene = scene
        self.move_group = move_group
        self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.eef_link = eef_link
        self.group_names = group_names
        self.pub = rospy.Publisher("/pcd_points", PointCloud2 , queue_size=10)
 
    def go_to_pose_goal(self, arr, i):

    	orient = quaternion_from_euler(-90.00000324031861 * (np.pi/180.0) , 1.272221883397151e-14 * (np.pi/180.0) , -90.00000324031861 * (np.pi/180.0))

    	pose_goal = geometry_msgs.msg.Pose()

    	pose_goal.orientation = geometry_msgs.msg.Quaternion(*orient)

    	pose_goal.position.x = arr[i][0]
    	pose_goal.position.y = arr[i][1]
    	pose_goal.position.z = arr[i][2]

    	print(arr[i][0])
    	print(arr[i][1])
    	print(arr[i][2])

    	print(self.move_group.get_current_rpy())

    	'''
    	auger_pose = geometry_msgs.msg.PoseStamped()

        auger_pose.pose.orientation.
    	auger_pose.pose.position.x = 2.60614051
    	auger_pose.pose.position.y = 2.29941863
    	auger_pose.pose.position.z = 2.43242476

    	auger_pose.header.frame_id = self.planning_frame
    	auger_pose.header.stamp = rospy.Time.now()

    	self.scene.add_mesh("auger", auger_pose, "/home/ghans/catkin2_ws/src/kuka_arm_test/scripts/auger2.stl")
		'''
    	self.move_group.set_pose_target(pose_goal)

    	plan = self.move_group.go(wait=True)

    	self.move_group.stop()

    	self.move_group.clear_pose_targets()

    	current_pose = self.move_group.get_current_pose().pose
    	return all_close(pose_goal, current_pose, 0.01)

    def plan_cartesian_path(self, scale=1):
        
        
        move_group = self.move_group
        
        with open('/home/ghans/catkin2_ws/src/kuka_arm_test/scripts/Linear_Displacement.npy', 'rb') as f:
            Z = np.load(f)
        
        waypoints = []

        wpose = move_group.get_current_pose().pose
        
        for i in range(1, 83):
            wpose.position.y += scale * Z[i]
            waypoints.append(copy.deepcopy(wpose))

        (plan, fraction) = move_group.compute_cartesian_path(
            waypoints, 0.01, 0.0  # waypoints to follow  # eef_step
        )  # jump_threshold

        return plan, fraction


    def display_trajectory(self, plan):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        robot = self.robot
        display_trajectory_publisher = self.display_trajectory_publisher

        ## BEGIN_SUB_TUTORIAL display_trajectory
        ##
        ## Displaying a Trajectory
        ## ^^^^^^^^^^^^^^^^^^^^^^^
        ## You can ask RViz to visualize a plan (aka trajectory) for you. But the
        ## group.plan() method does this automatically so this is not that useful
        ## here (it just displays the same trajectory again):
        ##
        ## A `DisplayTrajectory`_ msg has two primary fields, trajectory_start and trajectory.
        ## We populate the trajectory_start with our current robot state to copy over
        ## any AttachedCollisionObjects and add our plan to the trajectory.
        display_trajectory = moveit_msgs.msg.DisplayTrajectory()
        display_trajectory.trajectory_start = robot.get_current_state()
        display_trajectory.trajectory.append(plan)
        # Publish
        display_trajectory_publisher.publish(display_trajectory)

        ## END_SUB_TUTORIAL

    def execute_plan(self, plan):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        ## BEGIN_SUB_TUTORIAL execute_plan
        ##
        ## Executing a Plan
        ## ^^^^^^^^^^^^^^^^
        ## Use execute if you would like the robot to follow
        ## the plan that has already been computed:
        move_group.execute(plan, wait=True)

        ## **Note:** The robot's current joint state must be within some tolerance of the
        ## first waypoint in the `RobotTrajectory`_ or ``execute()`` will fail
        ## END_SUB_TUTORIAL
        
    def RotatePointCloud(self):

    	r = rospy.Rate(0.5)

    	print(self.move_group.get_current_rpy())

    	with open('/home/ghans/catkin2_ws/src/kuka_arm_test/scripts/Correct_Angles.npy', 'rb') as f:
    		angles = np.load(f)

    	int_pcd = o3d.io.read_point_cloud("/home/ghans/catkin2_ws/src/kuka_arm_test/scripts/red2.pcd")

    	for i in range(83):

    		arr = np.asarray(int_pcd.points)

    		r_header = std_msgs.msg.Header()
    		r_header.stamp = rospy.Time.now()
    		r_header.frame_id = self.planning_frame

    		ros_pcd = pcl2.create_cloud_xyz32(r_header, arr.tolist())
            
    		self.pub.publish(ros_pcd)

    		self.go_to_pose_goal(arr, i)

    		pcd_rotmat = copy.deepcopy(int_pcd)
    		R = pcd_rotmat.get_rotation_matrix_from_axis_angle(np.array([0, -(angles[i]), 0]))

    		int_pcd.rotate(R)

    		r.sleep()
    		

  	
def main():
    try:
        print("")
        print("----------------------------------------------------------")
        print("Welcome to the MoveIt MoveGroup Python Interface Tutorial")
        print("----------------------------------------------------------")
        print("Press Ctrl-D to exit at any time")
        print("")
        input(
            "============ Press `Enter` to begin the tutorial by setting up the moveit_commander ..."
        )
        tutorial = MoveGroupPythonIntefaceTutorial()
        

        input("============ Press to Rotate and Move ============ ...")

        tutorial.RotatePointCloud()

        '''

        input("============ Press `Enter` to execute a movement using a pose goal ...")
        
        tutorial.go_to_pose_goal()

        input("============ Press `Enter` to plan and display a Cartesian path ...")
        cartesian_plan, fraction = tutorial.plan_cartesian_path()

        input(
            "============ Press `Enter` to display a saved trajectory (this will replay the Cartesian path)  ..."
        )
        tutorial.display_trajectory(cartesian_plan)

        input("============ Press `Enter` to execute a saved path ...")
        tutorial.execute_plan(cartesian_plan)

        '''

        print("============ Python tutorial demo complete!")
        
    except rospy.ROSInterruptException:
        return
    except KeyboardInterrupt:
        return


if __name__ == "__main__":
    main()

