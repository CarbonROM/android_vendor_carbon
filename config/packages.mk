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
    Etar \
    Jelly \
    VanillaMusic \
    CarbonDelta \
    SimpleGallery \
    ExactCalculator

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
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images \
    font_log.png \
    libhealthd.lineage

# FS tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mount.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs

# Permissions
PRODUCT_PACKAGES += \
    privapp-permissions-carbon.xml \
    privapp-permissions-carbon-product.xml \
    privapp-permissions-carbon-system_ext.xml

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

PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

-include vendor/qcom/perf/packages.mk
