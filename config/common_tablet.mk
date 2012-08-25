# common
$(call inherit-product, vendor/liquid/config/common.mk)

# locales
PRODUCT_LOCALES := en_US fr_FR de_DE it_IT es_ES zh_CN ru_RU

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

