# common
$(call inherit-product, vendor/carbon/config/common.mk)

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Helium.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

$(call inherit-product, vendor/carbon/config/telephony.mk)
