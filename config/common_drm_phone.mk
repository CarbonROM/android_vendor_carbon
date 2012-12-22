# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/liquid/prebuilt/common_drm/phone/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    vendor/liquid/prebuilt/common_drm/phone/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/liquid/prebuilt/common_drm/phone/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/liquid/prebuilt/common_drm/phone/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/liquid/prebuilt/common_drm/phone/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

