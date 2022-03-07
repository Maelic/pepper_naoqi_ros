# pepper_naoqi_ros

Pepper bringup usage:
```buildoutcfg
roslaunch pepper_dcm_bringup pepper_bringup.launch robot_ip:=<ROBOT_IP>
```

Pepper naoqi_driver usage:
```buildoutcfg
roslaunch naoqi_driver naoqi_driver.launch nao_ip:=<ROBOT_IP>
```

Example in your roslaunch:
```buildoutcfg
  <!-- naoqi driver -->
  <include file="$(find naoqi_driver)/launch/naoqi_driver.launch">
    <arg name="nao_ip"            value="$(arg nao_ip)" />
    <arg name="nao_port"          value="$(arg nao_port)" />
    <arg name="roscore_ip"        value="$(arg roscore_ip)" />
    <arg name="network_interface" value="$(arg network_interface)" />
    <arg name="namespace"         value="$(arg namespace)" />
  </include>
```
  
