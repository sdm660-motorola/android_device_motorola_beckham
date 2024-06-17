#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device
$(call inherit-product, device/motorola/beckham/device.mk)

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.sdm660 \
    bootctrl.sdm660.recovery

# Device identifiers
PRODUCT_DEVICE := beckham
PRODUCT_NAME := lineage_beckham
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto Z3 Play
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beckham \
    PRIVATE_BUILD_DESC="beckham-user 9 PPWS29.131-27-1-15 4d8b92 release-keys"

#BUILD_FINGERPRINT := motorola/beckham/beckham:9/PPWS29.131-27-1-15/4d8b92:user/release-keys
