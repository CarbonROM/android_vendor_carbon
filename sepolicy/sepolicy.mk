#
# This policy configuration will be used by all products that
# inherit from Carbon
#

BOARD_SEPOLICY_DIRS += \
    vendor/carbon/sepolicy

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
    BOARD_SEPOLICY_DIRS += \
        vendor/carbon/sepolicy/qcom
endif
