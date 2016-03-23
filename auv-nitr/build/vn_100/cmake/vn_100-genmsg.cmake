# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vn_100: 4 messages, 2 services")

set(MSG_I_FLAGS "-Ivn_100:/home/opp/Documents/auv-nitr/src/vn_100/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vn_100_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg" NAME_WE)
add_custom_target(_vn_100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vn_100" "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg" ""
)

get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv" NAME_WE)
add_custom_target(_vn_100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vn_100" "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv" ""
)

get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg" NAME_WE)
add_custom_target(_vn_100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vn_100" "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv" NAME_WE)
add_custom_target(_vn_100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vn_100" "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv" ""
)

get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg" NAME_WE)
add_custom_target(_vn_100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vn_100" "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg" NAME_WE)
add_custom_target(_vn_100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vn_100" "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
)
_generate_msg_cpp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
)
_generate_msg_cpp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
)
_generate_msg_cpp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
)

### Generating Services
_generate_srv_cpp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
)
_generate_srv_cpp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
)

### Generating Module File
_generate_module_cpp(vn_100
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vn_100_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vn_100_generate_messages vn_100_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_cpp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv" NAME_WE)
add_dependencies(vn_100_generate_messages_cpp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_cpp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv" NAME_WE)
add_dependencies(vn_100_generate_messages_cpp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_cpp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_cpp _vn_100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vn_100_gencpp)
add_dependencies(vn_100_gencpp vn_100_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vn_100_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
)
_generate_msg_lisp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
)
_generate_msg_lisp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
)
_generate_msg_lisp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
)

### Generating Services
_generate_srv_lisp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
)
_generate_srv_lisp(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
)

### Generating Module File
_generate_module_lisp(vn_100
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vn_100_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vn_100_generate_messages vn_100_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_lisp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv" NAME_WE)
add_dependencies(vn_100_generate_messages_lisp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_lisp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv" NAME_WE)
add_dependencies(vn_100_generate_messages_lisp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_lisp _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_lisp _vn_100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vn_100_genlisp)
add_dependencies(vn_100_genlisp vn_100_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vn_100_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
)
_generate_msg_py(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
)
_generate_msg_py(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
)
_generate_msg_py(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
)

### Generating Services
_generate_srv_py(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
)
_generate_srv_py(vn_100
  "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
)

### Generating Module File
_generate_module_py(vn_100
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vn_100_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vn_100_generate_messages vn_100_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/auvcontrol.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_py _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/YPR.srv" NAME_WE)
add_dependencies(vn_100_generate_messages_py _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/ins_data.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_py _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/srv/depth_srv.srv" NAME_WE)
add_dependencies(vn_100_generate_messages_py _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/send_arduino.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_py _vn_100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/opp/Documents/auv-nitr/src/vn_100/msg/sensor_data.msg" NAME_WE)
add_dependencies(vn_100_generate_messages_py _vn_100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vn_100_genpy)
add_dependencies(vn_100_genpy vn_100_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vn_100_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vn_100
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(vn_100_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(vn_100_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vn_100
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(vn_100_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(vn_100_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vn_100
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(vn_100_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(vn_100_generate_messages_py geometry_msgs_generate_messages_py)
