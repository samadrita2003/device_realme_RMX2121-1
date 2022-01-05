#
# Copyright (C) 2021 Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2121/device.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cipher_RMX2121
PRODUCT_DEVICE := RMX2121
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme X7 Pro 5G
PRODUCT_MANUFACTURER := realme

# Gapps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
CIPHER_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 1080


# Build info
BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.211205.016.A1/7957957:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2121 \
    PRODUCT_NAME=RMX2121 \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.211205.016.A1 7957957 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
