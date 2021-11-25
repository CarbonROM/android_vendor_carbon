# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/etc/sensitive_pn.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sensitive_pn.xml

# GSM APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    CellBroadcastReceiver

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Solarium.ogg

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true
