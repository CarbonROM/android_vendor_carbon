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
    AppWidgetPicker \
    LiveWallpapers \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    Galaxy4 \
    PhaseBeam \
    NoiseField

# audio
include frameworks/base/data/sounds/NewAudio.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# binary
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/gps.conf:system/etc/gps.conf \
    vendor/liquid/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# permissions
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml

# framework
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/liquid/prebuilt/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar

# google
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/liquid/prebuilt/common/app/CalendarProvider.apk:system/app/CalendarProvider.apk \
    vendor/liquid/prebuilt/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/liquid/prebuilt/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/liquid/prebuilt/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/liquid/prebuilt/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/liquid/prebuilt/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/liquid/prebuilt/common/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/liquid/prebuilt/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/liquid/prebuilt/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/liquid/prebuilt/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/liquid/prebuilt/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/liquid/prebuilt/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/liquid/prebuilt/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/liquid/prebuilt/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/liquid/prebuilt/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/liquid/prebuilt/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/liquid/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/liquid/prebuilt/common/app/Talk.apk:system/app/Talk.apk \
    vendor/liquid/prebuilt/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/liquid/prebuilt/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk

# library
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/liquid/prebuilt/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/liquid/prebuilt/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/liquid/prebuilt/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/liquid/prebuilt/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

#xbin
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/su:system/xbin/su \
    vendor/liquid/prebuilt/common/system/app/SuperSU.apk:system/app/SuperSU.apk

# scripts
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw 

# version
PRODUCT_VERSION_MAJOR = v2
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = "Alpha6"
LiquidVersion := "Liquid-JB"-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(LiquidVersion)

