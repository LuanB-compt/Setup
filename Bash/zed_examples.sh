#ZED EXAMPLES INSTALLATION
cd ~/catkin_ws/src/
git clone https://github.com/stereolabs/zed-ros-examples.git
cd ..
rosdep install --from-paths src --ignore-src -r -y
catkin_make -DCMAKE_BUILD_TYPE=Release
source ./devel/setup.bash
