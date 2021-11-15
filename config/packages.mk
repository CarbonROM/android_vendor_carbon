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

# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig

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
    ExactCalculator \
    Seedvault \

# SetupWizard
PRODUCT_PACKAGES += \
    CarbonSetupWizard

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

# Extra Tools
PRODUCT_PACKAGES += \
    7z \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    setcap \
    unrar \
    zip

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
    privapp-permissions-carbon-product.xml \
    privapp-permissions-carbon-system_ext.xml

# Exempt DeskClock from Powersave
PRODUCT_PACKAGES += \
    deskclock.xml

# Hidden API whitelist
PRODUCT_PACKAGES += \
    carbon-hiddenapi-package-whitelist.xml

# ThemePicker
PRODUCT_PACKAGES += \
    CarbonThemesStub \
    ThemePicker

PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# System error handler
PRODUCT_PACKAGES += \
    CarbonErrorReport

-include vendor/qcom/perf/packages.mk
