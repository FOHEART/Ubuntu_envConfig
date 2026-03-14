# Ubuntu_envConfig

## 常用工具安装

```Shell
sudo apt update
sudo apt install net-tools
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

## OpenGL运行环境安装

```Shell
sudo apt install libglew-dev libglfw3-dev libglm-dev libglu1-mesa-dev
```

## Qt在线安装

```Shell
sudo apt install libxcb-cursor0 libxcb-cursor-dev
```

## 如果qt程序无法启动

```Shell
sudo apt install libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-xinerama0 libxcb-xfixes0
```

## 安装git

```Shell
sudo apt-get install git
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

## 安装openspec

首先更新nodejs

`node -v`

windows下载最新安装包安装

安装完后执行：

`npm install -g @fission-ai/openspec@latest`

## 安装PowerShell 7

`winget install --id Microsoft.PowerShell --source winget`

### 搜索最新版本的 PowerShell

`winget search --id Microsoft.PowerShell`



Output



`Name               Id                           Version Source`

`PowerShell         Microsoft.PowerShell         7.5.5.0 winget
PowerShell Preview Microsoft.PowerShell.Preview 7.6.0.6 winget`



