# brand
PRODUCT_BRAND ?= Carbon

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# packages
PRODUCT_PACKAGES += \
    Camera \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    Launcher2 \
    LiveWallpapersPicker \
    NoiseField \
    PhaseBeam \
    BlueBalls \
    Torch

# prebuilts
PRODUCT_PACKAGES += \
    GooManager \
    LatinIME \
    LockClock \
    PerformanceControl \
    Superuser

# tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs 
	
# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# themes
include vendor/carbon/config/theme_chooser.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/carbon/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/carbon/overlay/common

# bin
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/etc/init.carbon.rc:root/init.carbon.rc

# initd
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/xbin/su:system/xbin/su \
    vendor/carbon/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/carbon/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/carbon/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/carbon/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# nfc
PRODUCT_COPY_FILES += \
    vendor/carbon/config/permissions/com.carbon.android.xml:system/etc/permissions/com.carbon.android.xml \
    vendor/carbon/config/permissions/com.carbon.nfc.enhanced.xml:system/etc/permissions/com.carbon.nfc.enhanced.xml

# version
RELEASE = true
CARBON_VERSION_MAJOR = 1
CARBON_VERSION_MINOR = 0

ifeq ($(RELEASE),true)
    CARBON_VERSION := "Carbon-JB-v"$(CARBON_VERSION_MAJOR).$(CARBON_VERSION_MINOR)-$(shell date +%0d%^b%Y-%H%M%S)
else
    CARBON_VERSION := "Carbon-JB-exp"-$(shell date +%0d%^b%Y-%H%M%S)
endif

# goo.im properties
PRODUCT_PROPERTY_OVERRIDES += \
  ro.goo.rom=carbonjb2 \
  ro.goo.developerid=carbon \
  ro.goo.version=$(shell date +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.carbon.version=$(CARBON_VERSION)
