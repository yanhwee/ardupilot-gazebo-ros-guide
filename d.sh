DISTRO="melodic"

# Install MAVROS package for ROS

sudo apt-get install ros-$DISTRO-mavros ros-$DISTRO-mavros-extras -y

wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh

sudo bash ./install_geographiclib_datasets.sh

# Install RQT package for ROS (optional)

sudo apt-get install ros-$DISTRO-rqt ros-$DISTRO-rqt-common-plugins -y

# Install catkin_tools

sudo apt-get install python-catkin-tools -y