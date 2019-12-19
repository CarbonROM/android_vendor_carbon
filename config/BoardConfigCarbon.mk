# Charger
#ifneq ($(WITH_LINEAGE_CHARGER),false)
ifeq (true,false)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.lineage
endif

include vendor/carbon/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/carbon/config/BoardConfigQcom.mk

#enable CAF surfaceflinger only for CAF devices
TARGET_USE_CAF_SURFACEFLINGER:= true

endif

-include vendor/carbon/perf/BoardConfigVendor.mk

include vendor/carbon/config/BoardConfigSoong.mk
