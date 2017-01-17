# Additional packages

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Additional apps
PRODUCT_PACKAGES += \
    Launcher3 \
    Chromium \
    masquerade \
    OmniStyle \
    VanillaMusic \
    CMUpdater
