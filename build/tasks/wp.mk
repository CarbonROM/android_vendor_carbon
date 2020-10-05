# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 CarbonROM
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

.PHONY: wp
wp:
	ifeq ($(TARGET_SCREEN_WIDTH),)
		$(error TARGET_SCREEN_WIDTH must be set)
	endif
	ifeq ($(TARGET_SCREEN_HEIGHT),)
		$(error TARGET_SCREEN_HEIGHT must be set)
	endif

	@echo "Device: $(TARGET_DEVICE) resolution: $(TARGET_SCREEN_WIDTH)x$(TARGET_SCREEN_HEIGHT) ratio: $(shell echo "scale = 3; $(TARGET_SCREEN_WIDTH) \/ $(TARGET_SCREEN_HEIGHT)" | bc)"