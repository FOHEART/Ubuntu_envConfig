    

给当前文件qt相关的#include添加父类 比如#include <QtCore/qDebug> 添加完后尝试编译

  

将当前文件每行最多字符数设置为120个 自动换行

将include和inc文件夹下的头文件分组放置

将当前代码改为windows/ubuntu均能运行的版本

  

  

将cpp文件放到PROJECT_SOURCES分类中，将头文件放到PROJECT_HEADERS分类中，ui文件放到PROJECT_UI分类中，qrc文件放到PROJECT_RESOURCES分类中

---

添加一个宏定义 可以由外部调用者修改 GLOVE_HMAX_SDK_BUILD_SHARED ON/OFF 当设置为ON时 当前工程编译为动态库 否则为静态库

  

---

在当前工程中 直接使用

qt5_wrap_ui

qt5_wrap_cpp

qt5_add_resources

函数手动处理ui 文件 头文件和资源文件

  

---

目的是手动处理当前工程中与qt相关的源文件 将cmake/qt.cmake中的CMAKE_AUTOMOC

CMAKE_AUTOUIC CMAKE_AUTORCC都设置为OFF 并且将当前工程使用qt的头文件使用moc工具处理

ui文件使用uic工具处理 qrc工具使用rcc工具处理

  

---

md文件转换pdf

1、给当前文件添加目录

我的电脑已经安装了pandoc和wkhtmltopdf，使用pandoc将readme.md转换为pdf，需要确保pdf中目录能够正常跳转

  

  

---

1、将当前文件的注释改为Doxygen格式的 并且为中英文双语

2、将注释改为/* */格式的，而不是//，单独写在一行，并且放到变量或者函数的上一行，而不是放到变量的后面

  

---

1、将当前文件的注释改为Doxygen格式的 并且为中英文双语

2、将注释放到变量或者函数的上一行，而不是放到变量的后面