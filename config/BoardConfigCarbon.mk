# Flatten APEXs for performance
OVERRIDE_TARGET_FLATTEN_APEX := true

# Add our overlays
DEVICE_PACKAGE_OVERLAYS += vendor/carbon/overlay/common

# Squisher Location
SQUISHER_SCRIPT := vendor/carbon/tools/squisher

# Versioning
-include vendor/carbon/config/version.mk

# Wallpapers
include vendor/carbon/config/wallpaper.mk

include vendor/carbon/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/carbon/config/BoardConfigQcom.mk
endif

-include vendor/carbon/perf/BoardConfigVendor.mk

include vendor/carbon/config/BoardConfigSoong.mk
