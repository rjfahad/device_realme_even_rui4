# Copyright (C) 2024 The RisingOS Project
# SPDX-License-Identifier: Apache-2.0

# Vanilla build - no GMS (set before any inherits)
WITH_GMS := false

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/even/device.mk)

# Inherit RisingOS common config
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := rising_even
PRODUCT_DEVICE := even
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := even

TARGET_BOOT_ANIMATION_RES := 720

# RisingOS build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="MediaTek Helio G85" \
    RisingMaintainer="rjfahad"

# Build info - overridden at boot by init.cpp
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=even \
    DeviceProduct=even
