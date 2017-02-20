# This Makefile is preventing the Pixels
# from building the CAF code, because they
# have their own implementation

ifeq ($(filter marlin sailfish, $(TARGET_DEVICE)),)
LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
