# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2015 Chirayu Desai
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Android makefile to build kernel as a part of Android Build

LOCAL_PATH := $(call my-dir)

ifeq ($(BUILD_KERNEL),true)
ifeq ($(PRODUCT_PLATFORM_SOD),true)
ifeq ($(SOMC_KERNEL_VERSION),4.9)

# TARGET_KERNEL_APPEND_DTB := $(TARGET_NEEDS_DTBOIMAGE)

KERNEL_DEFCONFIG_SRC := $(wildcard $(LOCAL_PATH)/arch/$(TARGET_KERNEL_ARCH)/configs/aosp_*_$(TARGET_DEVICE)_defconfig)
KERNEL_DEFCONFIG := $(notdir $(KERNEL_DEFCONFIG_SRC))
$(info "Using $(KERNEL_DEFCONFIG) from $(KERNEL_DEFCONFIG_SRC)")

include $(LOCAL_PATH)/AndroidKernel.mk

# ifeq ($(TARGET_NEEDS_DTBOIMAGE),true)
# $(PRODUCT_OUT)/dtbo.img: $(KERNEL_DTBO_OUT)
# 	cp $(KERNEL_DTBO_OUT) $(PRODUCT_OUT)/dtbo.img
# endif # TARGET_NEEDS_DTBOIMAGE

endif # Sony Kernel version
endif # Sony AOSP devices
endif # BUILD_KERNEL
