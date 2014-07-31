# Copyright (C) 2014 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_mione_plus,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/xiaomi/mione_plus/device_mione_plus.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_mione_plus
PRODUCT_DEVICE := mione_plus
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI-ONE Plus

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mione_plus \
	BUILD_FINGERPRINT="Xiaomi/mione_plus/mione_plus:4.1.2/JZO54K/QDS84:userdebug/test-keys" \
	PRIVATE_BUILD_DESC="mione_plus-userdebug 4.1.2 JZO54K QDS84 test-keys" \
	
endif
