# Add our overlays
DEVICE_PACKAGE_OVERLAYS += vendor/carbon/overlay/common

# Versioning
-include vendor/carbon/config/version.mk

# Wallpapers
include vendor/carbon/config/wallpaper.mk

include vendor/carbon/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/carbon/config/BoardConfigQcom.mk
endif

include vendor/carbon/config/BoardConfigSoong.mk
