# Ubuntu_envConfig

## 编译环境

```bash
sudo apt update

sudo apt install build-essential python3-pip python-is-python3 npm net-tools

sudo apt install libxcb-cursor0 libxcb-cursor-dev libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-xinerama0 libxcb-xfixes0

sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-config-qt fcitx5-frontend-gtk3 fcitx5-frontend-gtk4 fcitx5-frontend-qt5
```

## 虚拟机没有网络

```bash
sudo dhclient
```

## 虚拟机共享文件夹修复

```Shell
chmod +x ./shell_cmd/fix-shared-folders.sh
./shell_cmd/fix-shared-folders.sh
```

## 将当前目录使用VSCode打开（Windows）

```Shell
./shell_cmd_win/open_in_vscode.bat
```

## 压缩/解压文件夹

```Shell
tar -czf myfolder.tar.gz myfolder/
tar -xzf backup.tar.gz
```

## Install claude code memory

```Shell
/plugin marketplace add thedotmack/claude-mem
/plugin install claude-mem
```

## Ubuntu git add user email

```Shell
git config --global user.email "humaoxiao@foheart.com"
git config --global user.name "FOHEART"
```

## 更换Python源

pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/

## 安装openspec

首先更新nodejs

`node -v`

windows下载最新安装包安装

Ubuntu下升级Node，Ubuntu22.04下版本过低，无法使用openspec

```Shell
sudo apt remove --purge nodejs npm
sudo apt autoremove
```

```Shell
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
# 若需指定版本，如 22.x，则将 setup_lts.x 改为 setup_22.x
```

```Shell
sudo apt install -y nodejs
```

```Shell
node -v
npm -v
```

安装完后执行：

```Shell
npm install -g @fission-ai/openspec@latest
```

## 安装winget

https://github.com/microsoft/winget-cli/tags

## 安装PowerShell 7

查看当前电脑安装的PowerShell版本：

$PSVersionTable.PSVersion

返回

Major  Minor  Build  Revision

5      1      26100  1591

尝试安装稳定版PS7

`winget install --id Microsoft.PowerShell --source winget`

如果安装失败，到下面地址下载msi手动安装：

https://github.com/PowerShell/PowerShell/releases

### 搜索最新版本的 PowerShell

`winget search --id Microsoft.PowerShell`

Output

`Name               Id                           Version Source`

`PowerShell         Microsoft.PowerShell         7.5.5.0 winget
PowerShell Preview Microsoft.PowerShell.Preview 7.6.0.6 winget`

### PowerShell 卸载Windows应用商店UAP 扩展名为appx

1. 找到准确的应用名字

```Shell
Get-AppxPackage | Select-Object Name, PackageFullName
```

2.卸载

```Shell
  Remove-AppxPackage 21090PaddyXu.QuickLook_3.7.3.0_neutral__egxr34yet59cg 
```
  
## linux下查看一个运行文件的依赖

```bash
ldd a
```

## 从Ubuntu虚拟机拷贝一个文件夹到Windows

使用PowerShell命令

语法：scp -r ubuntu用户名@ubuntu_ip:ubuntu文件夹路径 本地windows目标路径

```bash
scp -r your_ubuntu_user@ubuntu_vm_ip:/home/foheart/target_folder D:\
```

