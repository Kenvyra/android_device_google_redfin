#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/kenvyra/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

include device/google/redfin/device-kenvyra.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5
PRODUCT_NAME := kenvyra_redfin

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 13 TQ1A.221205.011 9244662 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:13/TQ1A.221205.011/9244662:user/release-keys

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
