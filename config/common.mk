PRODUCT_BRAND ?= CarbonROM

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Fixes: terminate called after throwing an instance of 'std::out_of_range' what(): basic_string::erase
# error with prop override
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID="$(BUILD_ID)-$(BUILD_USERNAME)@$(BUILD_HOSTNAME)"

# general properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.opa.eligible_device=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.selinux=1

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Pollux.ogg \
    ro.config.alarm_alert=Carbon.ogg

# Set system error handler
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.error.receiver.system.apps=org.carbonrom.errorreport

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/carbon/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/carbon/prebuilt/bin/50-hosts.sh:$(TARGET_COPY_OUT_SYSTEM)/addon.d/50-hosts.sh

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/addon.d/50-hosts.sh

ifneq ($(strip $(AB_OTA_PARTITIONS) $(AB_OTA_POSTINSTALL_CONFIG)),)
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/bin/backuptool_ab.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.sh \
    vendor/carbon/prebuilt/bin/backuptool_ab.functions:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.functions \
    vendor/carbon/prebuilt/bin/backuptool_postinstall.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_postinstall.sh

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/backuptool_ab.sh \
    system/bin/backuptool_ab.functions \
    system/bin/backuptool_postinstall.sh \

ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.ota.allow_downgrade=true
endif
endif

# Copy all vendor-specific init rc files
$(foreach f,$(wildcard vendor/carbon/prebuilt/etc/init/*.rc),\
    $(eval PRODUCT_COPY_FILES += $(f):$(TARGET_COPY_OUT_PRODUCT)/etc/init/$(notdir $f)))

# Enable Android Beam on all targets
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/etc/permissions/android.software.nfc.beam.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.nfc.beam.xml

# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.sip.voip.xml

# Charging sounds
PRODUCT_COPY_FILES += \
    vendor/carbon/sounds/BatteryPlugged.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/BatteryPlugged.ogg \
    vendor/carbon/sounds/BatteryPlugged_48k.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/BatteryPlugged_48k.ogg

# Enforce privapp-permissions whitelist
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.control_privapp_permissions=enforce

# Additional packages
include vendor/carbon/config/packages.mk

# Versioning
include vendor/carbon/config/version.mk

# Wallpapers
include vendor/carbon/config/wallpaper.mk

# Themes and Theme overlays
include vendor/themes/themes.mk

# Include common overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/carbon/overlay/no-rro
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/carbon/overlay/common \
    vendor/carbon/overlay/no-rro

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/carbon/overlay/dictionaries

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/framework/telephony-ext.jar \
    system/framework/oat/%/telephony-ext.odex \
    system/framework/oat/%/telephony-ext.vdex

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/fsck.ntfs \
    system/bin/mkfs.ntfs \
    system/bin/mount.ntfs \
    system/%/libfuse-lite.so \
    system/%/libntfs-3g.so

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep \
    Settings \
    SystemUI
