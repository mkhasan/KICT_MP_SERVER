#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/hasan/MyProjects/KICT_MP_SERVER/catkin_ws/src/robot_upstart"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/hasan/MyProjects/KICT_MP_SERVER/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/hasan/MyProjects/KICT_MP_SERVER/catkin_ws/install/lib/python2.7/dist-packages:/home/hasan/programs/MyProjects/KICT_MP_SERVER/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/hasan/programs/MyProjects/KICT_MP_SERVER/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/hasan/MyProjects/KICT_MP_SERVER/catkin_ws/src/robot_upstart/setup.py" \
     \
    build --build-base "/home/hasan/programs/MyProjects/KICT_MP_SERVER/catkin_ws/build/robot_upstart" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/hasan/MyProjects/KICT_MP_SERVER/catkin_ws/install" --install-scripts="/home/hasan/MyProjects/KICT_MP_SERVER/catkin_ws/install/bin"
