#!/usr/bin/env python3

import open3d as o3d
import numpy as np
import rospy
import math
import sys
import std_msgs.msg
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pcl2
import ros_numpy as rnp
from tester_package.msg import PcdAngle

#global to_msg
class CalcAngle(object):
    def __init__(self):
        # Params
        self.pcdfile = o3d.io.read_point_cloud("/home/ghans/catkin2_ws/src/tester_package/src/red_list1.pcd")
        self.pcd_arr = np.asarray(self.pcdfile.points)
        self.loop_rate = rospy.Rate(0.1)
        self.to_msg = PcdAngle()
        self.ii = 0
        print(self.ii)

        # Publishers
        self.pub = rospy.Publisher("/pcd_publish", PcdAngle, queue_size=10)

        # Subscribers
        rospy.Subscriber("/pcl_rotated", PcdAngle, self.AngleCallback, queue_size=1)


    def AngleCallback(self, msg):
        self.to_msg = msg
        self.pcd_arr = rnp.numpify(msg.pcd)

    def start(self):
        rospy.loginfo("Starting Angle Calc")

        #while not rospy.is_shutdown():
        i = 0
        angle = []
        
        while i < 83:

            print("Array Shape" + str(self.pcd_arr.shape))
            #self.pcd_arr.reshape((83, 3))
            self.theta = np.arctan2(self.pcd_arr[i][2], self.pcd_arr[i][0])

            if i == 2:
                print(np.arctan2(0.7095361 , -0.23313937) * (180/math.pi))

            header = std_msgs.msg.Header()
            header.stamp = rospy.Time.now()
            header.frame_id = 'map'
            
            self.to_msg.pcd = pcl2.create_cloud_xyz32(header, self.pcd_arr.tolist())

            self.to_msg.angle = self.theta
            angle_file = open("/home/ghans/catkin2_ws/src/tester_package/src/angle_file.txt", "a+");

            #if self.theta != self.to_msg.angle:
            print(i)
            angle_file.write(str(self.pcd_arr) + "\n" + str(type(self.pcd_arr))+ "\n")
            ang = self.theta * (180.0/math.pi)
            angle.append(ang)
            print(ang)

            i = i + 1
            angle_file.close()
            
            self.pub.publish(self.to_msg)
            self.loop_rate.sleep()

if __name__ == '__main__':

    rospy.init_node("CalcAngle", anonymous=True)
    calc_angle = CalcAngle()
    calc_angle.start()

#rosthttps://stackoverflow.com/questions/37373211/update-the-global-variable-in-rospy#new-answer?newreg=407e764eed8445f4966d55831c8b0c46