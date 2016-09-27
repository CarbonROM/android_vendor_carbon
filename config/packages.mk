# Additional packages

# Additional apps
PRODUCT_PACKAGES += \
    Chromium \
    masquerade \
    VanillaMusic

TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs \
    fsck.ntfs
