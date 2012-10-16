# configs
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/$(PA_CONF_SOURCE).conf:system/etc/paranoid/backup.conf \
    vendor/liquid/prebuilt/$(PA_CONF_SOURCE).conf:system/etc/paranoid/properties.conf

# overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/$(TARGET_PRODUCT)

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/app/ParanoidPreferences.apk:system/app/ParanoidPreferences.apk

# target
ifneq ($(OVERLAY_TARGET),)
    PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/$(OVERLAY_TARGET)
    PA_CONF_SOURCE := $(OVERLAY_TARGET)
else
    PA_CONF_SOURCE := $(TARGET_PRODUCT)
endif

