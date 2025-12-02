cmake_minimum_required(VERSION 2.8.3)

project(kuka_d435)

find_package(catkin REQUIRED)

catkin_package()

#if (CATKIN_ENABLE_TESTING)
#  find_package(roslaunch REQUIRED)
#  roslaunch_add_file_check(test/roslaunch_kr6.xml)
#endif()

install(DIRECTORY config launch meshes urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
