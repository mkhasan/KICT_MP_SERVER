# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs;serial_interface".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcar_controller;-lserial_interface".split(';') if "-lcar_controller;-lserial_interface" != "" else []
PROJECT_NAME = "car_controller"
PROJECT_SPACE_DIR = "/home/hasan/MyProjects/KICT_MP_SERVER/catkin_ws/install"
PROJECT_VERSION = "0.0.0"