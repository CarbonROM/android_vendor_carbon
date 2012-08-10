# common
$(call inherit-product, vendor/liquid/config/common.mk)

# apns
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/liquid/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

# packages
PRODUCT_PACKAGES += \
  Camera \
  Mms
