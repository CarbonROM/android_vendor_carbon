# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    CellBroadcastReceiver
