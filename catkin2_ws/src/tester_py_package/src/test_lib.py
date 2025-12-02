#!/usr/bin/env python3

import rospy



from lib_py.sample_library import example_function

if __name__ == '__main__':
    rospy.init_node('test_node')
    result = example_function(1, 2)
    rospy.loginfo("The answer of 1 + 2 is " + str(result))