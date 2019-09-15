# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/etc/sensitive_pn.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sensitive_pn.xml

# GSM APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/etc/selective-spn-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/selective-spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    CellBroadcastReceiver
