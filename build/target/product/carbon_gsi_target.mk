# Copyright (C) 2019-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, vendor/carbon/build/target/product/carbon_generic_target.mk)

# Enable artifact path requirements checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := strict

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.composer@2.1-impl \

# Bundle into system
PRODUCT_BUILD_PRODUCT_IMAGE  := false
PRODUCT_BUILD_SYSTEM_EXT_IMAGE := false

PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true
PRODUCT_FULL_TREBLE_OVERRIDE := true

PRODUCT_RESTRICT_VENDOR_FILES := all
PRODUCT_BRAND := generic

# Exclude all files under system/product and system/system_ext
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/product/% \
    system/system_ext/%

# GSI should always support up-to-date platform features.
# Keep this value at the latest API level to ensure latest build system
# default configs are applied.
PRODUCT_SHIPPING_API_LEVEL := 32

# GSI specific tasks on boot
PRODUCT_PACKAGES += \
    init.gsi.rc \
    init.vndk-nodef.rc \
    gsi_skip_mount.cfg \

# Support additional P, Q, R, and S VNDK packages
PRODUCT_EXTRA_VNDK_VERSIONS := 28 29 30 31
