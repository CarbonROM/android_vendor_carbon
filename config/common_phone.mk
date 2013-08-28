# audio
include frameworks/base/data/sounds/NewAudio.mk

# common
$(call inherit-product, vendor/carbon/config/common.mk)

# media
#PRODUCT_COPY_FILES += \
#    vendor/carbon/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# packages
PRODUCT_PACKAGES += \
  Mms \
  Stk

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

