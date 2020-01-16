#!/bin/bash

export MY_CATKIN_WORKSPACE=~/catkin_ws
source ~/.bashrc

if [ $(lsb_release -sc) == "trusty" ]; then
    export MY_ROS_DISTRO="indigo"
elif [ $(lsb_release -sc) == "xenial" ]; then
    export MY_ROS_DISTRO="kinetic"
fi

. /opt/ros/$MY_ROS_DISTRO/setup.sh

if [ -e $MY_CATKIN_WORKSPACE/devel/setup.bash ]; then
    source $MY_CATKIN_WORKSPACE/devel/setup.bash
elif [ -e /u/robot/git/care-o-bot/devel/setup.bash ]; then
    source /u/robot/git/care-o-bot/devel/setup.bash
else
    source /opt/ros/$MY_ROS_DISTRO/setup.bash
fi

export ROS_IP=`hostname -I | awk '{print $1}'`

exec "$@"
