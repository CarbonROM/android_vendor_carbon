# brand
PRODUCT_BRAND ?= Carbon

# SuperUser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/carbon/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

PRODUCT_BOOTANIMATION := vendor/carbon/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip
endif

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=3

# selinux dialog
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Installer
#PRODUCT_COPY_FILES += \
#    vendor/carbon/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
#    vendor/carbon/prebuilt/common/etc/persist.conf:system/etc/persist.conf

# Include CM audio files
include vendor/carbon/config/cm_audio.mk

PRODUCT_PACKAGES += \
    VideoEditor \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Extra tools in CM
PRODUCT_PACKAGES += \
    vim

# main packages
PRODUCT_PACKAGES += \
    AudioFX \
    BluetoothExt \
    Camera \
    CMFileManager \
    Development \
    DeskClock \
    Eleven \
    Galaxy4 \
    HoloSpiralWallpaper \
    LatinIME \
    libemoji \
    LiveWallpapers \
    LiveWallpapersPicker \
    Launcher3 \
    LockClock \
    MagicSmokeWallpapers \
    NoiseField \
    OmniSwitch \
    PhaseBeam \
    PhotoPhase \
    PhotoTable \
    SoundRecorder \
    Torch \
    Trebuchet \
    VisualizationWallpapers \
    VoicePlus

# CarbonROM packages
PRODUCT_PACKAGES += \
        BlueBalls \
        CarbonDelta \
        ROMStats \
        Wallpapers

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/carbon/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# CM packages
PRODUCT_PACKAGES += \
        CMHome \
        CMWallpapers

# Screen recorder
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Extra tools in Carbon
PRODUCT_PACKAGES += \
    libsepol \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    ntfsfix \
    ntfs-3g \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)

PRODUCT_PACKAGES += \
    procmem \
    procrank \
    su

endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=0

# languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# themes
include vendor/carbon/config/theme_chooser.mk

# korean
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/carbon/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/carbon/overlay/common

# bin
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/bin/sysinit:system/bin/sysinit

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/bin/otasigcheck.sh:system/bin/otasigcheck.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/carbon/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Carbon-specific init file
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/etc/init.local.rc:root/init.cm.rc
#PRODUCT_COPY_FILES += \
#    vendor/carbon/prebuilt/common/etc/init.carbon.rc:root/init.carbon.rc

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/carbon/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/carbon/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/carbon/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Backup tool
CARBON_BUILD = true
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/carbon/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/carbon/prebuilt/common/bin/50-carbon.sh:system/addon.d/50-carbon.sh \
    vendor/carbon/prebuilt/common/bin/blacklist:system/addon.d/blacklist \
    vendor/carbon/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/carbon/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is Carbon!
PRODUCT_COPY_FILES += \
    vendor/carbon/config/permissions/com.carbon.android.xml:system/etc/permissions/com.carbon.android.xml

# nfc
PRODUCT_COPY_FILES += \
    vendor/carbon/config/permissions/com.carbon.nfc.enhanced.xml:system/etc/permissions/com.carbon.nfc.enhanced.xml

# version
RELEASE = false
CARBON_VERSION_MAJOR = 5
CARBON_VERSION_MINOR = 0

# Set CARBON_BUILDTYPE
ifdef CARBON_NIGHTLY
    CARBON_BUILDTYPE := NIGHTLY
endif
ifdef CARBON_EXPERIMENTAL
    CARBON_BUILDTYPE := EXPERIMENTAL
endif
ifdef CARBON_RELEASE
    CARBON_BUILDTYPE := RELEASE
endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by Carbon Devs!)
ifdef CARBON_BUILDTYPE
else
    CARBON_BUILDTYPE := UNOFFICIAL
    CARBON_VERSION_MAJOR :=
    CARBON_VERSION_MINOR :=
endif

# Set Carbon version
ifdef CARBON_RELEASE
    CARBON_VERSION := "CARBON-LP-v"$(CARBON_VERSION_MAJOR).$(CARBON_VERSION_MINOR)
else
    CARBON_VERSION := "CARBON-LP-$(CARBON_BUILDTYPE)"-$(shell date +%Y%m%d-%H%M)
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.carbon.version=$(CARBON_VERSION)

# ROM Statistics and ROM Identification
PRODUCT_PROPERTY_OVERRIDES += \
ro.romstats.askfirst=1 \
ro.romstats.ga=UA-43747246-1 \
ro.romstats.name=CarbonRom- \
ro.romstats.url=http://carbon-stats.mattman.org \
ro.romstats.version=$(CARBON_VERSION)

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false

# Audio
$(call inherit-product-if-exists, frameworks/base/data/sounds/AllAudio.mk)
