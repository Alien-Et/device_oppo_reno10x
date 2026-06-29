# Device makefile for OPPO Reno 10x Zoom (SM8150)
# Extracted from vendor.img

LOCAL_PATH := device/oppo/reno10x

# Inherit from common
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device identifier
PRODUCT_DEVICE := reno10x
PRODUCT_NAME := oppo_reno10x
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH1919
PRODUCT_MANUFACTURER := OPPO

# Platform
PRODUCT_BOARD := msmnile
PRODUCT_PLATFORM := msmnile

# Recovery specific
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc

# Crypto HAL (from vendor)
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl-qti \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.keymaster@3.0-impl-qti \
    android.hardware.keymaster@3.0-service \
    vendor.qti.hardware.qseecom@1.0-impl \
    vendor.qti.hardware.qseecom@1.0-service \
    vendor.qti.hardware.qteeconnector@1.0-impl \
    vendor.qti.hardware.qteeconnector@1.0-service

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl-2.1-qti \
    android.hardware.health@2.1-service

# Gatekeeper (for PIN/pattern unlock)
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl-qti \
    android.hardware.gatekeeper@1.0-service

# Keymaster (for encryption)
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl-qti \
    android.hardware.keymaster@3.0-service

# TWRP specific
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATACRYPTO := true
