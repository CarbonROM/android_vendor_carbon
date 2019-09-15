# Apply it to build.prop
ADDITIONAL_BUILD_PROPERTIES += \
    ro.modversion=CarbonROM-$(CARBON_VERSION) \
    ro.carbon.version=$(CARBON_VERSION) \
    ro.romstats.url=https://stats.carbonrom.org \
    ro.romstats.name=CarbonROM \
    ro.romstats.version=$(CARBON_VERSION)

# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif
