在 Ubuntu 上安装中文输入法，目前最主流且推荐的是使用 **Fcitx5** 框架（新一代，体验好、兼容性强）。以下是通用安装步骤：

### 1. 安装 Fcitx5 及中文组件
打开终端，依次执行以下命令：
```bash
# 更新软件源
sudo apt update

# 安装 fcitx5 主程序、中文输入法插件（含拼音、双拼等）、配置工具及前端支持
sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-config-qt fcitx5-frontend-gtk3 fcitx5-frontend-gtk4 fcitx5-frontend-qt5
```


### 2. 设置系统输入法框架
- 打开系统 **设置** → **区域与语言**（Region & Language）。
- 找到 **管理已安装的语言**（Manage Installed Languages）。
- 在弹出的窗口中，将 **键盘输入法系统**（Keyboard input method system）下拉选项改为 **Fcitx 5**。
- 如果列表中没有 Fcitx 5，可在终端执行 `im-config -n fcitx5`，然后重启设置页面再看。


### 3. 重启并添加拼音输入法
- **注销或重启系统**（必须，否则可能无法生效）。
- 重新登录后，点击屏幕右上角状态栏出现的 **键盘图标（或 Fcitx 5 图标）** → 选择 **配置**（Configure）。
- 在配置窗口点击 **+** 号，取消勾选“仅显示当前语言”，搜索并添加 **Pinyin（拼音）** 即可。
- 默认切换快捷键通常为 `Super(Win) + 空格` 或 `Ctrl + 空格`。


---

**补充说明：**
- 如果你使用的是较老的 Ubuntu 版本（如 18.04/20.04）且习惯旧版，也可以安装 `fcitx` (4.x) 或直接使用系统自带的 `IBus`（执行 `sudo apt install ibus-libpinyin`，然后在设置→键盘→输入源添加“中文(智能拼音)”）。
- 若需安装搜狗输入法，需先装好 Fcitx 5 或 Fcitx 4 框架，再从官网下载对应的 deb 包安装。
