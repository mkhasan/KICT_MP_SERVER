cmake_minimum_required(VERSION 3.0.2)
project(car_controller)


add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  serial_interface
  
)


include_directories(
  include
  /usr/include/python3.6m
  ${catkin_INCLUDE_DIRS}
)


add_library(${PROJECT_NAME}
  src/car_controller.cpp
  
)


generate_messages(
   DEPENDENCIES
   std_msgs
   car_controller
   
 )

catkin_package(
   INCLUDE_DIRS include
   LIBRARIES ${PROJECT_NAME} serial_interface
   CATKIN_DEPENDS roscpp rospy std_msgs serial_interface 
)
 
add_dependencies(${PROJECT_NAME} serial_interface)

target_link_libraries(${PROJECT_NAME} ${serial_interface_LIBRARIES} ${catkin_LIBRARIES})

add_executable(${PROJECT_NAME}_node src/${PROJECT_NAME}_node.cpp src/${PROJECT_NAME}.cpp)

add_dependencies(${PROJECT_NAME}_node serial_interface ${${PROJECT_NAME}_node_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS}) 

target_link_libraries(${PROJECT_NAME}_node ${PROJECT_NAME} ${catkin_LIBRARIES})

