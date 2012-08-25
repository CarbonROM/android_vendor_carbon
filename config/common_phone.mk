# common
$(call inherit-product, vendor/liquid/config/common.mk)

# packages
PRODUCT_PACKAGES += \
  Mms

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

