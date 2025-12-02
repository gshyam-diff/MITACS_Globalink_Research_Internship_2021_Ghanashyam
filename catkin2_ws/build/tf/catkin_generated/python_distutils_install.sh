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

echo_and_run cd "/home/ghans/catkin2_ws/src/tf"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ghans/catkin2_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ghans/catkin2_ws/install/lib/python3/dist-packages:/home/ghans/catkin2_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ghans/catkin2_ws/build" \
    "/usr/bin/python3" \
    "/home/ghans/catkin2_ws/src/tf/setup.py" \
    egg_info --egg-base /home/ghans/catkin2_ws/build/tf \
    build --build-base "/home/ghans/catkin2_ws/build/tf" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ghans/catkin2_ws/install" --install-scripts="/home/ghans/catkin2_ws/install/bin"
