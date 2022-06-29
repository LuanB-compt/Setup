#ANAVS-ROS-ADAPTE
cd ~/catkin_ws/src/
git clone https://github.com/brain-facens/anavs-ros-adapter.git
cd ../
rosdep install --from-paths src --ignore-src -r -y
catkin_make
source ./devel/setup.bash
