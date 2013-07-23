#Version of the ROM
CARBON_CODENAME := MOO
CARBON_REVISION := CR-5.1

ifndef CARBON_BUILDTYPE
  CARBON_BUILDTYPE := UNOFFICIAL
endif

TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst carbon_,,$(TARGET_PRODUCT_SHORT))

ifeq ($(CARBON_BUILDTYPE), RELEASE)
  CARBON_VERSION := $(CARBON_CODENAME)-$(CARBON_REVISION)-$(TARGET_PRODUCT_SHORT)-$(shell date -u +%Y%m%d-%H%M)
else
  CARBON_VERSION := $(CARBON_REVISION)-$(CARBON_CODENAME)-$(CARBON_BUILDTYPE)-$(TARGET_PRODUCT_SHORT)-$(shell date -u +%Y%m%d-%H%M)
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID="$(BUILD_ID)-$(shell whoami)@$(shell hostname)"

# Apply it to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=CarbonROM-$(CARBON_VERSION) \
    ro.carbon.version=$(CARBON_VERSION) \
    ro.romstats.url=https://stats.carbonrom.org \
    ro.romstats.name=CarbonROM \
    ro.romstats.version=$(CARBON_VERSION)
