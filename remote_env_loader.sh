#!/bin/bash

export ROS_IP=192.168.1.234
export ROS_MASTER_URI=http://192.168.1.17:11311

echo *THIS FILE IS TRANSFERED AND EXECUTED*
source /home/ipa325/catkin_ws/devel/setup.bash

exec "$@"
