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

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

$(call inherit-product, device/google/cuttlefish/vsoc_x86/phone/aosp_cf.mk)
$(call inherit-product, vendor/carbon/build/target/product/carbon_generic_target.mk)

TARGET_PREBUILT_KERNEL := device/google/cuttlefish_prebuilts/kernel/5.15-i686/kernel-5.15

PRODUCT_HOST_PACKAGES += acloud

# Overrides
PRODUCT_NAME := carbon_emulator_x86
PRODUCT_MODEL := CarbonROM for x86

OVERRIDE_TARGET_FLATTEN_APEX := true
