# packages
PRODUCT_PACKAGES += \
    Stk

# locales
PRODUCT_LOCALES := en_US fr_FR de_DE it_IT es_ES zh_CN ru_RU

# gsm spn
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# gsm apns
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

