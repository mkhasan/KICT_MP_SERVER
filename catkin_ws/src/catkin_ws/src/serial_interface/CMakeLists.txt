cmake_minimum_required(VERSION 2.8.3)
project(serial_interface)


add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

catkin_package(
   INCLUDE_DIRS include
   LIBRARIES serial_interface
   CATKIN_DEPENDS roscpp rospy std_msgs
)

include_directories(

	include
	${catkin_INCLUDE_DIRS}
)


add_library(${PROJECT_NAME} src/impl/unix.cc src/impl/list_ports/list_ports_linux.cc src/serial.cc )


target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES})

#add_executable(test_serial src/test.cpp )

#target_link_libraries(test_serial ${PROJECT_NAME} mosquittopp)
