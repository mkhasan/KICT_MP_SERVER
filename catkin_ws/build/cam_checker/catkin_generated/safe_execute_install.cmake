execute_process(COMMAND "/home/hasan/programs/MyProjects/KICT_MP_SERVER/catkin_ws/build/cam_checker/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/hasan/programs/MyProjects/KICT_MP_SERVER/catkin_ws/build/cam_checker/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
