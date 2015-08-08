# Inherit common CM stuff
$(call inherit-product, vendor/carbon/config/common.mk)

# Include CM audio files
include vendor/carbon/config/cm_audio.mk

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/carbon/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
