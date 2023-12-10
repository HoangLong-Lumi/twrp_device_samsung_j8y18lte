#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/j8y18lte

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Time Zone Data
PRODUCT_COPY_FILES += \
 system/timezone/output_data/iana/tzdata:recovery/root/system_root/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_j8y18lte
PRODUCT_DEVICE := j8y18lte
PRODUCT_MODEL := SM_J810F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
