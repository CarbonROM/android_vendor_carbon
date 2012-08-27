# brand
PRODUCT_BRAND ?= liquid

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.media.enc.jpeg.quality=100 \
    ro.kernel.android.checkjni=0 \
    drm.service.enabled=true

# packages
PRODUCT_PACKAGES += \
    Camera \
    LiveWallpapers \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    Galaxy4 \
    PhaseBeam \
    NoiseField

# tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs

# themes
include vendor/liquid/config/theme_chooser.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# languages
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/dictionaries

# binary
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# script
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw

# gps
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/gps.conf:system/etc/gps.conf

# root
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/su:system/xbin/su \
    vendor/liquid/prebuilt/common/app/SuperSU.apk:system/app/SuperSU.apk

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    vendor/liquid/config/permissions/com.liquidsmooth.android.xml:system/etc/permissions/com.liquidsmooth.android.xml

# version
PRODUCT_VERSION_MAJOR = v2
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = "RC1"
LIQUID_VERSION := "Liquid-JB"-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(LIQUID_VERSION)

