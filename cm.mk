# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := s9321

# Inherit ?!
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# This device has NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/symphony/s9321/s9321.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s9321
PRODUCT_NAME := cm_s9321
PRODUCT_BRAND := WIKO
PRODUCT_MODEL := HIGHWAY CM11
PRODUCT_MANUFACTURER := SYMPHONY

# Enable Torch
PRODUCT_PACKAGES += Torch

