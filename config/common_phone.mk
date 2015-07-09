# common
$(call inherit-product, vendor/carbon/config/common.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CyanTone.ogg \
    ro.config.notification_sound=CyanDoink.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

$(call inherit-product, vendor/carbon/config/telephony.mk)
