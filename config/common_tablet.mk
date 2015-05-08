# common
$(call inherit-product, vendor/carbon/config/common.mk)

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

