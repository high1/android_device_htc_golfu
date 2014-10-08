# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH  := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/golfu/golfu.mk)

# Product name
PRODUCT_DEVICE := golfu
PRODUCT_NAME := cm_golfu
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := HTC Desire C
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := Desire C
PRODUCT_VERSION_DEVICE_SPECIFIC := -golfu

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=golfu BUILD_ID=KTU84Q BUILD_FINGERPRINT=htc_europe/htc_golfu/golfu:4.4.4/KTU84Q/87995:user/release-keys
PRIVATE_BUILD_DESC="1.35.401.1 CL62541 release-keys"