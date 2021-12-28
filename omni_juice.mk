#
# Copyright (C) 2020 Team Win Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from juice
$(call inherit-product, device/poco/juice/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := juice
PRODUCT_NAME := omni_juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root) \
	$(LOCAL_PATH)/prebuilt/dtb:dtb.img
