# Install Ardupilot

cd ~/ardupilot
Tools/environment_install/install-prereqs-ubuntu.sh -y

. ~/.profile

# Install Ardupilot Plugin for Gazebo

cd ardupilot_gazebo
mkdir build
cd build
cmake ..
make -j4
sudo make install

echo 'source /usr/share/gazebo/setup.sh' >> ~/.bashrc

echo 'export GAZEBO_MODEL_PATH=~/ardupilot_gazebo/models' >> ~/.bashrc

echo 'export GAZEBO_RESOURCE_PATH=~/ardupilot_gazebo/worlds:${GAZEBO_RESOURCE_PATH}' >> ~/.bashrc

source ~/.bashrc