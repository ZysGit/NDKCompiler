@rem 开始编译
call ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk NDK_APPLICATION_MK=Application.mk

@rem 防止运行完毕后直接退出
pause

@rem 清楚上次编译缓存
@rem call ndk-build NDK_PROJECT_PATH=. clean

@rem 当我们要编译一组 C/C++ 源代码时 首先我们需要创建 NDK 配置文件 Android.mk 和 Application.mk
@rem 之后我们就可以使用命令指定对应的配置文件及工程路径如上面的方式开始编译
@rem 编译完成后会生成 libs 和 obj 两个文件夹
@rem libs 下为编译产物，静态库为 .a 动态库为 .so
@rem obj 下为编译过程产物，一般为一些带调试信息的静态库
