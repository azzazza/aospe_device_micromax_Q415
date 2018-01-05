# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

# TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_HALF_RES := true

# Include Bootanimation configuration
TARGET_BOOT_ANIMATION_RES := 480

# Inherit some common LineageOS stuff.
# $(call inherit-product, vendor/aosp/config/common_full_phone.mk)
$(call inherit-product, vendor/aosp/common.mk)

# Inherit device configuration
$(call inherit-product, device/micromax/Q415/Q415.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Q415
PRODUCT_NAME := aosp_Q415
PRODUCT_BRAND := MICROMAX
PRODUCT_MODEL := Pace_4G
PRODUCT_MANUFACTURER := MICROMAX
PRODUCT_RELEASE_NAME := Pace_4G

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Moscow

PRODUCT_GMS_CLIENTID_BASE := android-micromax

EXTENDED_BUILD_TYPE := FINAL

# Root options
ROOT_METHOD := SU
