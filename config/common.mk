# brand
PRODUCT_BRAND ?= liquid

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.rommanager.developerid=liquid \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=true \
    ro.media.enc.jpeg.quality=100 \
    ro.kernel.android.checkjni=0 \
    persist.sys.camera-sound=1

# packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    Galaxy4 \
    PhaseBeam \
    NoiseField

# tmobile
#PRODUCT_PACKAGES += \
#    ThemeManager \
#    ThemeChooser \
#    com.tmobile.themes

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# binary
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \
    vendor/liquid/prebuilt/common/etc/init.d/90tweaks:system/etc/init.d/90tweaks


# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# xbin
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/su:system/xbin/su \
    vendor/liquid/prebuilt/common/system/app/SuperSU.apk:system/app/SuperSU.apk

# scripts
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw 

# Liquid Version

PRODUCT_VERSION_MAJOR = v2
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = "Alpha3"

LiquidVersion := "Liquid-JB"-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(LiquidVersion)

