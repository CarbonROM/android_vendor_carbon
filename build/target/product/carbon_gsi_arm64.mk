# Copyright (C) 2021 The LineageOS Project
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

$(call inherit-product, vendor/carbon/build/target/product/carbon_gsi_target.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

#OVERRIDE_TARGET_FLATTEN_APEX := true

# Overrides
PRODUCT_NAME := carbon_gsi_arm64
PRODUCT_MODEL := CarbonROM GSI for ARM64
PRODUCT_DEVICE := gsi_arm64

include $(SRC_TARGET_DIR)/product/gsi_release.mk
