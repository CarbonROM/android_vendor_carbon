# common
$(call inherit-product, vendor/liquid/config/common.mk)

# drm
$(call inherit-product, vendor/liquid/config/common_drm_tablet.mk)

# gsm
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# packages
PRODUCT_PACKAGES += \
  Mms


