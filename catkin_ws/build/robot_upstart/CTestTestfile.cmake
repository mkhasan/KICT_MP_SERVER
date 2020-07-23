# CMake generated Testfile for 
# Source directory: /home/hasan/KICT_MP_SERVER/catkin_ws/src/robot_upstart
# Build directory: /home/hasan/KICT_MP_SERVER/catkin_ws/build/robot_upstart
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_robot_upstart_roslint_package "/home/hasan/KICT_MP_SERVER/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/hasan/KICT_MP_SERVER/catkin_ws/build/test_results/robot_upstart/roslint-robot_upstart.xml" "--working-dir" "/home/hasan/KICT_MP_SERVER/catkin_ws/build/robot_upstart" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/hasan/KICT_MP_SERVER/catkin_ws/build/test_results/robot_upstart/roslint-robot_upstart.xml make roslint_robot_upstart")
add_test(_ctest_robot_upstart_nosetests_test "/home/hasan/KICT_MP_SERVER/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/hasan/KICT_MP_SERVER/catkin_ws/build/test_results/robot_upstart/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/hasan/KICT_MP_SERVER/catkin_ws/build/test_results/robot_upstart" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/hasan/KICT_MP_SERVER/catkin_ws/src/robot_upstart/test --with-xunit --xunit-file=/home/hasan/KICT_MP_SERVER/catkin_ws/build/test_results/robot_upstart/nosetests-test.xml")
