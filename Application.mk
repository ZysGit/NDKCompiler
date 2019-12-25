# 定义 C++ 标准库
APP_STL := gnustl_static
# C++ 编译宏 只在编译阶段生效 空格分隔
APP_CPPFLAGS := -frtti -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -std=c++11 -fsigned-char
# 减少命令行长度，强制使用中间列表文件，用于解决 windows 命令超长的问题，但是会减慢编译速度。
APP_SHORT_COMMANDS := true
# 构建系统在链接应用时传递的一组链接器标志 非必须
APP_LDFLAGS := -latomic
# 构建 abi 列表，用空格分隔
APP_ABI := armeabi-v7a arm64-v8a

# Application.mk 全解： https://developer.android.com/ndk/guides/application_mk.html?hl=zh-cn