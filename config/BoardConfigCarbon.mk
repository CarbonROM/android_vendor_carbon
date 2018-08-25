# Charger
ifneq ($(WITH_CM_CHARGER),false)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.cm
endif

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
    BOARD_USES_QTI_HARDWARE := true
endif

ifeq ($(BOARD_USES_QTI_HARDWARE),true)
include vendor/carbon/config/BoardConfigQcom.mk
endif
