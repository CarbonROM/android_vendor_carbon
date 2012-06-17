# brand
PRODUCT_BRAND ?= liquid

# build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="Liquid Linaro v1.5 RC1"

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
    ro.com.android.dataroaming=false \
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

# tmobile
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# binary
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sdcard:system/bin/sdcard \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/gps.conf:system/etc/gps.conf \
    vendor/liquid/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \
    vendor/liquid/prebuilt/common/etc/init.d/90tweaks:system/etc/init.d/90tweaks

# permissions
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# framework
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/liquid/prebuilt/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar

# google
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/liquid/prebuilt/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/liquid/prebuilt/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/liquid/prebuilt/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/liquid/prebuilt/common/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/liquid/prebuilt/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/liquid/prebuilt/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/liquid/prebuilt/common/app/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
    vendor/liquid/prebuilt/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/liquid/prebuilt/common/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/liquid/prebuilt/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/liquid/prebuilt/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/liquid/prebuilt/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/liquid/prebuilt/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/liquid/prebuilt/common/app/Talk.apk:system/app/Talk.apk \
    vendor/liquid/prebuilt/common/app/Vending.apk:system/app/Vending.apk \
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

# scripts
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw

