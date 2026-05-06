在 Ubuntu 上 VSCode 无法使用中文输入法（如 Fcitx5），通常是**安装方式不兼容**或**环境变量/Wayland 渲染冲突**导致的。你可以按顺序尝试以下几种解决方案：

### 1. 更换 VSCode 安装版本（最常见）
如果你是通过 Ubuntu Software (Snap) 安装的 VSCode，它对系统输入法的兼容性较差，极易出现无法输入中文的问题。
- **解决办法**：卸载 Snap 版本，前往 https://code.visualstudio.com/ 下载 `.deb` 安装包，使用 `sudo apt install ./下载的包名.deb` 进行安装。

