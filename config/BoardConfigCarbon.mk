# Charger
ifneq ($(WITH_LINEAGE_CHARGER),false)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.lineage
endif

include vendor/carbon/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
    BOARD_USES_QTI_HARDWARE := true
endif

ifeq ($(BOARD_USES_QTI_HARDWARE),true)
include vendor/carbon/config/BoardConfigQcom.mk
endif

-include vendor/carbon/perf/BoardConfigVendor.mk

include vendor/carbon/config/BoardConfigSoong.mk