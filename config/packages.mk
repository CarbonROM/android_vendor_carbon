# Additional packages

# Bootanimation
PRODUCT_PACKAGES += \
    bootanimation.zip

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# CellBroadcastReceiver
PRODUCT_PACKAGES += \
CellBroadcastReceiver

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Additional apps
PRODUCT_PACKAGES += \
    SearchLauncherQuickStep \
    Jelly \
    OmniStyle \
    VanillaMusic \
    CarbonDelta \
    SimpleGallery \
    WeatherClient

# SetupWizard
PRODUCT_PACKAGES += \
    CarbonSetupWizard

# Turbo
PRODUCT_PACKAGES += \
    Turbo \
    turbo.xml \
    privapp-permissions-turbo.xml

# Fonts
PRODUCT_PACKAGES += \
    CR-Fonts

# Custom off-mode charger
#ifneq ($(WITH_LINEAGE_CHARGER),false)
ifeq (true,false)
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images \
    font_log.png \
    libhealthd.lineage
endif

# NTFS-3G support
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# ExFAT support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# Permissions
PRODUCT_PACKAGES += \
    privapp-permissions-carbon.xml \
    privapp-permissions-carbon-product.xml

# Exempt DeskClock from Powersave
PRODUCT_PACKAGES += \
    deskclock.xml

# Backup Services whitelist
PRODUCT_PACKAGES += \
    backup.xml

# Hidden API whitelist
PRODUCT_PACKAGES += \
    carbon-hiddenapi-package-whitelist.xml

# ThemePicker
PRODUCT_PACKAGES += \
    CarbonThemesStub \
    ThemePicker

-include vendor/qcom/perf/packages.mk
