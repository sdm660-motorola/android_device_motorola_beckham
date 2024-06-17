#
# Copyright (C) 2017 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Must set these before including common config
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOOTLOADER_BOARD_NAME := SDM660
TARGET_SUPPORTS_MOTO_MODS := true

# Inherit from motorola msm8998-common
include device/motorola/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/beckham

# Assertions
TARGET_BOARD_INFO_FILE := device/motorola/beckham/board-info.txt
TARGET_OTA_ASSERT_DEVICE := beckham

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := lineageos_beckham_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/beckham_manifest.xml

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3187671040
BOARD_VENDORIMAGE_PARTITION_SIZE := 939524096

# Power
TARGET_HAS_NO_WLAN_STATS := true

# Properties
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# inherit from the proprietary version
include vendor/motorola/beckham/BoardConfigVendor.mk
