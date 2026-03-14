LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := crashlytics-trampoline
LOCAL_SRC_FILES := main.cpp \
                   And64InlineHook.cpp \
                   SubstrateHook.cpp \
                   SymbolFinder.cpp

LOCAL_LDLIBS := -llog -landroid
LOCAL_CPPFLAGS := -std=c++17 -fpermissive
LOCAL_ARM_MODE := arm

include $(BUILD_SHARED_LIBRARY)
