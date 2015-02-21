# Common settings and files
-include vendor/carbon/config/common.mk

# Add tablet overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/carbon/overlay/common_tablet

PRODUCT_CHARACTERISTICS := tablet

# common
$(call inherit-product, vendor/carbon/config/common.mk)

# gps
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/etc/gps.conf:system/etc/gps.conf

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# media
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

