# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tester_package: 1 messages, 1 services")

set(MSG_I_FLAGS "-Itester_package:/home/ghans/catkin2_ws/src/tester_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tester_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg" NAME_WE)
add_custom_target(_tester_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tester_package" "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv" NAME_WE)
add_custom_target(_tester_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tester_package" "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tester_package
)

### Generating Services
_generate_srv_cpp(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tester_package
)

### Generating Module File
_generate_module_cpp(tester_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tester_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tester_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tester_package_generate_messages tester_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg" NAME_WE)
add_dependencies(tester_package_generate_messages_cpp _tester_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv" NAME_WE)
add_dependencies(tester_package_generate_messages_cpp _tester_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tester_package_gencpp)
add_dependencies(tester_package_gencpp tester_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tester_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tester_package
)

### Generating Services
_generate_srv_eus(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tester_package
)

### Generating Module File
_generate_module_eus(tester_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tester_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tester_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tester_package_generate_messages tester_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg" NAME_WE)
add_dependencies(tester_package_generate_messages_eus _tester_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv" NAME_WE)
add_dependencies(tester_package_generate_messages_eus _tester_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tester_package_geneus)
add_dependencies(tester_package_geneus tester_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tester_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tester_package
)

### Generating Services
_generate_srv_lisp(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tester_package
)

### Generating Module File
_generate_module_lisp(tester_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tester_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tester_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tester_package_generate_messages tester_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg" NAME_WE)
add_dependencies(tester_package_generate_messages_lisp _tester_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv" NAME_WE)
add_dependencies(tester_package_generate_messages_lisp _tester_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tester_package_genlisp)
add_dependencies(tester_package_genlisp tester_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tester_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tester_package
)

### Generating Services
_generate_srv_nodejs(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tester_package
)

### Generating Module File
_generate_module_nodejs(tester_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tester_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tester_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tester_package_generate_messages tester_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg" NAME_WE)
add_dependencies(tester_package_generate_messages_nodejs _tester_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv" NAME_WE)
add_dependencies(tester_package_generate_messages_nodejs _tester_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tester_package_gennodejs)
add_dependencies(tester_package_gennodejs tester_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tester_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tester_package
)

### Generating Services
_generate_srv_py(tester_package
  "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tester_package
)

### Generating Module File
_generate_module_py(tester_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tester_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tester_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tester_package_generate_messages tester_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/msg/PcdAngle.msg" NAME_WE)
add_dependencies(tester_package_generate_messages_py _tester_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/tester_package/srv/GenerateAngles.srv" NAME_WE)
add_dependencies(tester_package_generate_messages_py _tester_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tester_package_genpy)
add_dependencies(tester_package_genpy tester_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tester_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tester_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tester_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tester_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tester_package_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tester_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tester_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tester_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(tester_package_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tester_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tester_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tester_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tester_package_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tester_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tester_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tester_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(tester_package_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tester_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tester_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tester_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tester_package_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tester_package_generate_messages_py sensor_msgs_generate_messages_py)
endif()
