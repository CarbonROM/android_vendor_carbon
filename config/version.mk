#Version of the ROM
CARBON_CODENAME := S
CARBON_REVISION := CR-10.0

ifndef CARBON_BUILDTYPE
  CARBON_BUILDTYPE := UNOFFICIAL
endif

TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst carbon_,,$(TARGET_PRODUCT_SHORT))

CARBON_VERSION := $(CARBON_REVISION)-$(CARBON_CODENAME)-$(CARBON_BUILDTYPE)-$(TARGET_PRODUCT_SHORT)-$(shell date -u +%Y%m%d-%H%M)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID="$(BUILD_ID)-$(BUILD_USERNAME)@$(BUILD_HOSTNAME)"
