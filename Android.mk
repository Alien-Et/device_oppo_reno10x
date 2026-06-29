# Android.mk for OPPO Reno 10x Zoom (SM8150)

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),reno10x)
include $(call-subdir-makefiles)
endif
