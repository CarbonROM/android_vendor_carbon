# brand
PRODUCT_BRAND ?= liquid

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
    MusicFX \
    LiveWallpapers \
    LatinImeGoogle \
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

# liquid
PRODUCT_PACKAGES += \
    SuperSU

# themes
include vendor/liquid/config/theme_chooser.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# languages
PRODUCT_COPY_FILES += \
vendor/aokp/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \

# bin
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

# chron
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/liquid/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/liquid/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/liquid/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/liquid/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/liquid/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/liquid/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache

# initd
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/liquid/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/liquid/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/liquid/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/liquid/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/liquid/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/liquid/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/liquid/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/liquid/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/liquid/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/liquid/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/liquid/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/su:system/xbin/su \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# nfc
PRODUCT_COPY_FILES += \
    vendor/liquid/config/permissions/com.liquidsmooth.nfc.enhanced.xml:system/etc/permissions/com.liquidsmooth.nfc.enhanced.xml

# version
PRODUCT_VERSION_MAJOR = v2.1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = "Alpha4"
LiquidVersion = "Liquid-JB"-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(LiquidVersion)

