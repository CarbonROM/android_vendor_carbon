LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_RRO_THEME := AmberAccent

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_MODULE_TAGS := optional
LOCAL_PRODUCT_MODULE := true
LOCAL_PACKAGE_NAME := Amber
LOCAL_SDK_VERSION := current
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := false

include $(BUILD_RRO_PACKAGE)
