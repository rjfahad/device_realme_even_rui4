#
# Copyright (C) 2024 The CherishOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/even/device.mk)

# CherishOS build type
CHERISH_BUILD_TYPE := UNOFFICIAL
# Vanilla build (no GMS)
CHERISH_VANILLA := true

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_even
PRODUCT_DEVICE := even
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3430

PRODUCT_GMS_CLIENTID_BASE := android-realme

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
	BuildFingerprint=realme/RMX3430/RED8AF:14/UP1A.231005.007/V420:14/UP1A.231005.007/V420:user/release-keys \
    DeviceName=RMX3430 \
    DeviceProduct=RMX3430 \
    SystemDevice=RMX3430 \
    SystemName=RMX3430

# Maintainer
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=alamin
