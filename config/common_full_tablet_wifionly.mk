# Inherit common Liquid stuff
$(call inherit-product, vendor/liquid/config/common.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

ifeq ($(TARGET_BOOTANIMATION_NAME),)
    PRODUCT_COPY_FILES += \
        vendor/liquid/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip
endif
