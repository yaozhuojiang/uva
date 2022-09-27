# c++

mkdir -p {namespace}/src
cd {namespace}
catkin_make
cd src
catkin_create_pkg {pkg_name} roscpp rospy std_msgs
cd {pkg_name}
edit main.cpp
edit Cmakelist.txt
cd {namespace}
catkin_make

roscore
cd {namespace}
source devel/setup.bash
rosrun {pkg_name} main

## python

cd {pkg_name}
mkdir scripts
edit main.py
chmod +x main.py
edit Cmakelist.txt
cd {namespace}
catkin_make

roscore
cd {namespace}
source devel/setup.bash
rosrun {pkg_name} main.py