# Device makefile for OPPO Reno 10x Zoom (SM8150)

LOCAL_PATH := device/oppo/reno10x

# Inherit from common
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from vendor
$(call inherit-product, vendor/oppo/reno10x/reno10x-vendor.mk)

# Device identifier
PRODUCT_DEVICE := reno10x
PRODUCT_NAME := oppo_reno10x
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH1919
PRODUCT_MANUFACTURER := OPPO

# TWRP specific
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc
