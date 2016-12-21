# Copyright (C) 2016 The CyanogenMod Project
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

# Device Stuff
$(call inherit-product, device/htc/m7/m7.mk)

# CM Stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# NFC Stuff
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Bootanimation
TARGET_BOOTANIMATION_NAME := 1080

# Device Naming
PRODUCT_DEVICE := m7
PRODUCT_NAME := cm_m7
PRODUCT_BRAND := htc
PRODUCT_MODEL := One
PRODUCT_MANUFACTURER := HTC

# Device overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=LMY47O.H18 \
    PRIVATE_BUILD_DESC="6.04.1700.18 CL536258 release-keys" \
    BUILD_FINGERPRINT="htc/m7_google/m7:5.1/LMY47O.H18/666675:user/release-keys"
