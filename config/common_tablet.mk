# Common settings and files
-include vendor/carbon/config/common.mk

# Add tablet overlays
DEVICE_PACKAGE_OVERLAYS += vendor/carbon/overlay/common_tablet

PRODUCT_CHARACTERISTICS := tablet
