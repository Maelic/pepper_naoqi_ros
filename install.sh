curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt update
sudo apt install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install python-rosdep
sudo rosdep init
rosdep update

mkdir ~/catkin_ws && mkdir ~/catkin_ws/src
cd ~/catkin_ws/src
git clone https://github.com/Maelic/pepper_naoqi_ros.git
cd ./pepper_naoqi_ros/ && rosdep install -i -y --from-paths ./naoqi_driver
cd ~/catkin_ws && catkin_make

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

sh ./script.sh