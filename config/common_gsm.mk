# apn
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# spn
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# locales
PRODUCT_LOCALES := en_US fr_FR de_DE it_IT es_ES zh_CN ru_RU

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

