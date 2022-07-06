# **INSTALLATION TO LINUX UBUNTU 18.04 LTS**

## **APPS SETUP**
- Installation some famous apps that I always use:
    - Git
    - curl
    - Spotify
    - Gparted
    - htop
    - Zoom               ([download](https://zoom.us/download))
    - Discord            ([download](https://discord.com/download))
    - Visual Studio Code ([download](https://code.visualstudio.com/download))

## **GH CLI SETUP**
- More information [here](https://github.com/cli/cli)
```
$ curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
$ sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
$ echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
$ sudo apt update
$ sudo apt install gh
```
-------------------------------------
## **CUDA SETUP**
- More information [here](https://developer.nvidia.com/cuda-11-6-0-download-archive)
```
$ wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
$ sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
$ wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda-repo-ubuntu1804-11-6-local_11.6.0-510.39.01-1_amd64.deb
$ sudo dpkg -i cuda-repo-ubuntu1804-11-6-local_11.6.0-510.39.01-1_amd64.deb
$ sudo apt-key add /var/cuda-repo-ubuntu1804-11-6-local/7fa2af80.pub
$ sudo apt-get update
$ sudo apt-get -y install cuda
```
-------------------------------------
## **SDK ZED2 SETUP**
- Download [here](https://www.stereolabs.com/developers/release/)
```
$ cd path/to/download/folder
$ chmod +x ZED_SDK_Ubuntu18_cuda11.5_v3.7.4.run
$ ./ZED_SDK_Ubuntu18_v3.0.run
```
-------------------------------------
## **ROS SETUP**
- More information [here](https://wiki.ros.org/melodic/Installation)
```
$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
$ sudo apt install curl
$ curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
$ sudo apt update
$ sudo apt install ros-melodic-desktop-full
$ echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
$ source ~/.bashrc
$ sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
$ sudo apt install python-rosdep
$ sudo rosdep init
$ rosdep update
```
-------------------------------------
## **ZED WRAPPER/INTERFACE PACKAGE SETUP**
More information [here](https://github.com/stereolabs/zed-ros-wrapper)
```
$ cd path/to/catkin_ws/src/
$ git clone --recursive https://github.com/stereolabs/zed-ros-wrapper.git
$ cd ..
$ rosdep install --from-paths src --ignore-src -r -y
$ catkin_make -DCMAKE_BUILD_TYPE=Release
$ source ./devel/setup.bash
```
-------------------------------------
## **ZED EXAMPLES PACKAGE SETUP**
More information [here](https://github.com/stereolabs/zed-ros-examples)
```
$ cd path/to/catkin_ws/src/
$ git clone https://github.com/stereolabs/zed-ros-examples.git
$ cd ..
$ rosdep install --from-paths src --ignore-src -r -y
$ catkin_make -DCMAKE_BUILD_TYPE=Release
$ source ./devel/setup.bash
```
-------------------------------------
## **ANAVS-ROS-ADAPTER PACKAGE SETUP**
More information [here](https://github.com/stereolabs/zed-ros-examples)
```
$ cd ~/catkin_ws/src/
$ git clone https://github.com/brain-facens/anavs-ros-adapter.git
$ cd ../
$ rosdep install --from-paths src --ignore-src -r -y
$ catkin_make
$ source ./devel/setup.bash
```
