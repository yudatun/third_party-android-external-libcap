LOCAL_PATH := $(call my-dir)

common_cflags := -Wno-unused-parameter -Wno-tautological-compare

########################################
# getcap
include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := getcap.c
LOCAL_MODULE := getcap
LOCAL_STATIC_LIBRARIES := libcap
include $(BUILD_EXECUTABLE)

########################################
# setcap
include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := setcap.c
LOCAL_MODULE := setcap
LOCAL_STATIC_LIBRARIES := libcap
include $(BUILD_EXECUTABLE)
