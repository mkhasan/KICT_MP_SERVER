execute_process(COMMAND "/home/hasan/KICT_MP_SERVER/catkin_ws/build/python_bindings_tutorial-master/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/hasan/KICT_MP_SERVER/catkin_ws/build/python_bindings_tutorial-master/catkin_generated/python_distutils_install.sh) returned error code ")
endif()