#
# Copyright (C) 2018-2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from common.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Sony
PRODUCT_DEVICE := bahamut
PRODUCT_MANUFACTURER := Sony
PRODUCT_NAME := lineage_bahamut
PRODUCT_MODEL := SO-01M

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

TARGET_VENDOR_PRODUCT_NAME := bahamut

# Fingerprint
BUILD_FINGERPRINT := docomo/SO-01M/SO-01M:11/55.2.D.3.22/055002D003002200989647728:user/release-keys
BUILD_DESCRIPTION := docomo-user 55.2.D.3.22 055002D003002200989647728 release-keys

PRODUCT_PROPERTY_OVERRIDES += 
    TARGET_DEVICE=SO-01M \
    TARGET_PRODUCT=SO-01M \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
