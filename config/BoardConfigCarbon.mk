include vendor/carbon/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/carbon/config/BoardConfigQcom.mk
endif

include vendor/carbon/config/BoardConfigSoong.mk
