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
    NoiseField \
    Torch

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
    vendor/liquid/prebuilt/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml

# framework
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/liquid/prebuilt/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/liquid/prebuilt/common/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar

# google
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
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
    vendor/liquid/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/liquid/prebuilt/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/liquid/prebuilt/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/liquid/prebuilt/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/liquid/prebuilt/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/liquid/prebuilt/common/app/QuickSearchBox.apk:system/app/QuickSearchBox.apk \
    vendor/liquid/prebuilt/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/liquid/prebuilt/common/app/SuperSU.apk:system/app/SuperSU.apk \
    vendor/liquid/prebuilt/common/app/Talk.apk:system/app/Talk.apk \
    vendor/liquid/prebuilt/common/app/VoiceSearchStub.apk:system/app/VoiceSearchStub.apk

# library
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/lib/libwvm.so:system/lib/libwvm.so \
    vendor/liquid/prebuilt/common/lib/libwvdrm_L1.so:system/lib/libwvdrm_L1.so \
    vendor/liquid/prebuilt/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/liquid/prebuilt/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/liquid/prebuilt/common/lib/libdrmwvmplugin.so:system/lib/libdrmwvmplugin.so \
    vendor/liquid/prebuilt/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/liquid/prebuilt/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
    vendor/liquid/prebuilt/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/liquid/prebuilt/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/liquid/prebuilt/common/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/liquid/prebuilt/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/liquid/prebuilt/common/lib/libWVStreamControlAPI_L1.so:system/lib/libWVStreamControlAPI_L1.so

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# root
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/su:system/xbin/su

# scripts
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw 

# theme chooser
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/liquid/prebuilt/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# liquid version
PRODUCT_VERSION_MAJOR = v2
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = "Beta1"
LiquidVersion = "Liquid-JB"-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(LiquidVersion)

