# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "prbt_hardware_support: 3 messages, 3 services")

set(MSG_I_FLAGS "-Iprbt_hardware_support:/home/ghans/catkin2_ws/src/prbt_hardware_support/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(prbt_hardware_support_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg" NAME_WE)
add_custom_target(_prbt_hardware_support_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prbt_hardware_support" "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg" ""
)

get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg" NAME_WE)
add_custom_target(_prbt_hardware_support_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prbt_hardware_support" "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg" "std_msgs/UInt16MultiArray:std_msgs/Bool:std_msgs/MultiArrayDimension:std_msgs/MultiArrayLayout:std_msgs/Header"
)

get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg" NAME_WE)
add_custom_target(_prbt_hardware_support_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prbt_hardware_support" "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg" ""
)

get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv" NAME_WE)
add_custom_target(_prbt_hardware_support_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prbt_hardware_support" "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv" "prbt_hardware_support/BrakeTestErrorCodes"
)

get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv" NAME_WE)
add_custom_target(_prbt_hardware_support_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prbt_hardware_support" "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv" ""
)

get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv" NAME_WE)
add_custom_target(_prbt_hardware_support_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prbt_hardware_support" "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv" "prbt_hardware_support/ModbusRegisterBlock"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_cpp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_cpp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
)

### Generating Services
_generate_srv_cpp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_cpp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_cpp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
)

### Generating Module File
_generate_module_cpp(prbt_hardware_support
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(prbt_hardware_support_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(prbt_hardware_support_generate_messages prbt_hardware_support_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_cpp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_cpp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_cpp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_cpp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_cpp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_cpp _prbt_hardware_support_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prbt_hardware_support_gencpp)
add_dependencies(prbt_hardware_support_gencpp prbt_hardware_support_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prbt_hardware_support_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_eus(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_eus(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
)

### Generating Services
_generate_srv_eus(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_eus(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_eus(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
)

### Generating Module File
_generate_module_eus(prbt_hardware_support
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(prbt_hardware_support_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(prbt_hardware_support_generate_messages prbt_hardware_support_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_eus _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_eus _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_eus _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_eus _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_eus _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_eus _prbt_hardware_support_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prbt_hardware_support_geneus)
add_dependencies(prbt_hardware_support_geneus prbt_hardware_support_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prbt_hardware_support_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_lisp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_lisp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
)

### Generating Services
_generate_srv_lisp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_lisp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_lisp(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
)

### Generating Module File
_generate_module_lisp(prbt_hardware_support
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(prbt_hardware_support_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(prbt_hardware_support_generate_messages prbt_hardware_support_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_lisp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_lisp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_lisp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_lisp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_lisp _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_lisp _prbt_hardware_support_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prbt_hardware_support_genlisp)
add_dependencies(prbt_hardware_support_genlisp prbt_hardware_support_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prbt_hardware_support_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_nodejs(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_nodejs(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
)

### Generating Services
_generate_srv_nodejs(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_nodejs(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_nodejs(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
)

### Generating Module File
_generate_module_nodejs(prbt_hardware_support
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(prbt_hardware_support_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(prbt_hardware_support_generate_messages prbt_hardware_support_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_nodejs _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_nodejs _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_nodejs _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_nodejs _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_nodejs _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_nodejs _prbt_hardware_support_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prbt_hardware_support_gennodejs)
add_dependencies(prbt_hardware_support_gennodejs prbt_hardware_support_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prbt_hardware_support_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_py(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
)
_generate_msg_py(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
)

### Generating Services
_generate_srv_py(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_py(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
)
_generate_srv_py(prbt_hardware_support
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv"
  "${MSG_I_FLAGS}"
  "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
)

### Generating Module File
_generate_module_py(prbt_hardware_support
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(prbt_hardware_support_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(prbt_hardware_support_generate_messages prbt_hardware_support_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/BrakeTestErrorCodes.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_py _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusMsgInStamped.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_py _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/msg/ModbusRegisterBlock.msg" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_py _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/BrakeTest.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_py _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/SendBrakeTestResult.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_py _prbt_hardware_support_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghans/catkin2_ws/src/prbt_hardware_support/srv/WriteModbusRegister.srv" NAME_WE)
add_dependencies(prbt_hardware_support_generate_messages_py _prbt_hardware_support_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prbt_hardware_support_genpy)
add_dependencies(prbt_hardware_support_genpy prbt_hardware_support_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prbt_hardware_support_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prbt_hardware_support
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(prbt_hardware_support_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prbt_hardware_support
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(prbt_hardware_support_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prbt_hardware_support
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(prbt_hardware_support_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prbt_hardware_support
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(prbt_hardware_support_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prbt_hardware_support
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(prbt_hardware_support_generate_messages_py std_msgs_generate_messages_py)
endif()
