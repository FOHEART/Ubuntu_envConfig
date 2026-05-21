Ubuntu下安装Steam/SteamVR

下面教程以ubuntu22.04 虚拟机为例
# 1. 安装

打开网站：

```
https://store.steampowered.com/about/
```

下载安装包：

![[Pasted image 20260521173805.png]]

在Downloads文件夹下执行：

```
sudo apt install ./steam_latest.deb
```

![[Pasted image 20260521173857.png]]


再终端再次输入

```bash
steam
```

![[Pasted image 20260521174020.png]]

再弹出的窗口中，全部回车，自动安装依赖项目。



第一次启动时间较长，耐心等待。

完成后，会自动弹出登录界面：

![[Pasted image 20260521174540.png]]


# 2、安装SteamVR

Steam中搜索SteamVR并安装：

![[Pasted image 20260521174814.png]]


# 3、设置免头显模式（可选）

如果只需要Vive Tracker定位，而不需要连接头戴显示器，需要设置下面的内容：

打开 显示隐藏文件：

![[Pasted image 20260521175114.png]]

打开路径（其中/home/foheart需要改为实际的用户目录）：

/home/foheart/.steam/steam/steamapps/common/SteamVR/resources/settings

下的default.vrsettings文件，修改：

```
"requireHmd": false,
"forcedDriver": "null",
"activateMultipleDrivers": true,
```

![[Pasted image 20260521180201.png]]

/home/foheart/.steam/steam/steamapps/common/SteamVR/drivers/null/resources/settings

下的default.vrsettings文件，修改：

```
"enable": true,
```
![[Pasted image 20260521180316.png]]

保存后退出。

# 4、连接ViveTracker接收器

虚拟机中连接接收器：

![[Pasted image 20260521180520.png]]

![[Pasted image 20260521180556.png]]

![[Pasted image 20260521180628.png]]

上面图片，连接了两个接收器到虚拟机。

# 5、启动SteamVR

无头显模式下，Room Setup不需要 直接关闭

![[Pasted image 20260521182006.png]]

打开ViveTracker传感器：

![[Pasted image 20260521182102.png]]

面板显示如上，说明连接正常。

### 至此，SteamVR安装完成。