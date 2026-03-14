LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := xhook
LOCAL_SRC_FILES := xhook.c xh_core.c xh_elf.c xh_jni.c xh_log.c xh_util.c xh_version.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := crashlytics-trampoline

LOCAL_SRC_FILES := main.cpp \
                   And64InlineHook.cpp \
                   SubstrateDebug.cpp \
                   SubstrateHook.cpp \
                   SubstratePosixMemory.cpp \
                   SymbolFinder.cpp \
                   dlfcn.cpp

LOCAL_STATIC_LIBRARIES := xhook
LOCAL_LDLIBS := -llog -landroid -lGLESv2 -lEGL

LOCAL_CPPFLAGS := -std=c++17 -fvisibility=hidden -fpermissive
LOCAL_ARM_MODE := arm

include $(BUILD_SHARED_LIBRARY)
