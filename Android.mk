# 1. 标准头，定义 LOCAL_PATH 为当前路径
LOCAL_PATH := $(call my-dir)
# 2. 标准头，清楚所有 LOCAL 开头的宏定义
include $(CLEAR_VARS)
# 3. 本模块名
LOCAL_MODULE := lb_cocos3x
# 定义源码目录
LOCAL_LB_SRC_FILES := ${LOCAL_PATH}/../cocos

# 4. 定义源文件路径 必须
LOCAL_SRC_FILES := $(wildcard ${LOCAL_LB_SRC_FILES}/*/*.cpp ${LOCAL_LB_SRC_FILES}/*/*/*.cpp)

# 5. 定义头文件路径 必须
LOCAL_C_INCLUDES := $(LOCAL_LB_SRC_FILES)/base $(LOCAL_LB_SRC_FILES)/ext $(LOCAL_LB_SRC_FILES)/third $(LOCAL_LB_SRC_FILES)/crypt

# 注意：引入外部库与第 8、9 步密切相关
# 6. 引入外部静态库 .a
LOCAL_STATIC_LIBRARIES := cocos2dx_static
# 引入外部动态库 .so
# LOCAL_SHARED_LIBRARIES := cocos2dx_static

# 7. 构建方式-动态库 .so
include $(BUILD_SHARED_LIBRARY)
# 构建方式-静态库 .a
#include $(BUILD_STATIC_LIBRARY)

# 8. 导入外部库路径
$(call import-add-path,$(LOCAL_PATH)/../../cocos2dxlibs_3x/cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2dxlibs_3x/cocos2d/cocos)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2dxlibs_3x/cocos2d/external)
# 9. 导入外部库 module。 . 表示根路径查找所需 modue 当然也可以一个一个声明。
$(call import-module,.)

# module 是指一个模块，一般由 Andorid.mk 文件配置 LOCAL_MODULE 定义 module 名

# Android.mk 全解： https://developer.android.com/ndk/guides/android_mk
# Android NDK 详解： https://developer.android.com/ndk