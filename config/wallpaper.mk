#
# Copyright (C) 2020 The CarbonROM Project
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
#

ifeq ($(TARGET_SCREEN_WIDTH),)
    $(warning TARGET_SCREEN_WIDTH is not set, using default value: 1080)
    TARGET_SCREEN_WIDTH := 1080
endif
ifeq ($(TARGET_SCREEN_HEIGHT),)
    $(warning TARGET_SCREEN_HEIGHT is not set, using default value: 1920)
    TARGET_SCREEN_HEIGHT := 1920
endif

ifneq ($(TARGET_USE_GENERIC_WALLPAPER),)
    TARGET_SCREEN_WIDTH := 1080
    TARGET_SCREEN_HEIGHT := 1920
endif

RESOLUTION := $(TARGET_SCREEN_WIDTH)x$(TARGET_SCREEN_HEIGHT)

ifneq ($(filter 720x1280 720x1520 1080x1920 1080x2160 1080x2220 1080x2240 1080x2246 1080x2280 1080x2340 1080x2400 1200x1920 1440x2560 1440x2880 1440x3120 1440x3168,$(RESOLUTION)),)
    DEVICE_PACKAGE_OVERLAYS += vendor/carbon/overlay/wallpaper/$(RESOLUTION)
else ifeq ($(TARGET_USE_GENERIC_WALLPAPER),)
    $(error Unsupported Resolution: $(RESOLUTION). Export TARGET_USE_GENERIC_WALLPAPER to force default wallpaper resolution of 1080x1920)
endif
