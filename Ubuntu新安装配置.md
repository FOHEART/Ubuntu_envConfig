
## 虚拟机没有网络？

联网模式先改为桥接Bridge
这时候还不能往虚拟机里粘贴东西。
## 更新库

```bash
sudo apt update
```
## 安装vm-tool
```bash
sudo apt install open-vm-tools open-vm-tools-desktop
```
重启虚拟机。
这时候可以往虚拟机里粘贴东西了。

## 添加SSH

[[配置github ssh key]]

## 安装git cmake build-essential nettool

sudo apt install git cmake build-essential net-tools

## 安装Opengl相关库
```Shell
sudo apt install libglew-dev libglfw3-dev libglm-dev libglu1-mesa-dev libgl1-mesa-dev freeglut3-dev
```
## 挂载share文件夹

## 安装Qt
安装前断网
安装qt-opensource-linux-x64-5.14.2.run到/opt/Qt5.14.2
安装后联网
