#Version of the ROM
CARBON_CODENAME := MOO

ifndef CARBON_BUILDTYPE
  CARBON_BUILDTYPE := UNOFFICIAL
endif

TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst carbon_,,$(TARGET_PRODUCT_SHORT))

ifeq ($(CARBON_BUILDTYPE), RELEASE)
  CARBON_VERSION := $(CARBON_CODENAME)-$(TARGET_PRODUCT_SHORT)-$(BUILD_ID)-$(shell date -u +%Y%m%d-%H%M)
else
  CARBON_VERSION := $(CARBON_CODENAME)-$(CARBON_BUILDTYPE)-$(TARGET_PRODUCT_SHORT)-$(BUILD_ID)-$(shell date -u +%Y%m%d-%H%M)
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID="$(CARBON_CODENAME)-$(BUILD_ID)-$(shell whoami)@$(shell hostname)-$(shell date -u +%m-%d-%Y)"

# Apply it to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=CarbonROM-$(CARBON_VERSION) \
    ro.carbon.version=$(CARBON_VERSION)
