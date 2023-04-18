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

# PRODUCT_BOOT_JARS += \
#     telephony-ext

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
    Aperture \
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

PRODUCT_PACKAGES += \
    charger_res_images \
    lineage_charger_animation \
    lineage_charger_animation_vendor

# Extra Tools
PRODUCT_PACKAGES += \
    7z \
    curl \
    getcap \
    htop \
    lib7z \
    nano \
    pigz \
    setcap \
    unrar \
    zip

# FS tools
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mount.ntfs \
    mke2fs \
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
    ThemePicker

PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# System error handler
PRODUCT_PACKAGES += \
    CarbonErrorReport

# RRO Overlays
PRODUCT_PACKAGES += \
    DocumentsUIOverlay \
    NetworkStackOverlay

-include vendor/qcom/perf/packages.mk
