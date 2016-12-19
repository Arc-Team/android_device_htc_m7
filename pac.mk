# Device Stuff
$(call inherit-product, device/htc/m7/m7.mk)

# PAC Stuff
$(call inherit-product, vendor/pac/config/common_full_phone.mk)

# NFC Stuff
$(call inherit-product, vendor/pac/config/nfc_enhanced.mk)

# Bootanimation
PAC_BOOTANIMATION_NAME := 1080

# Device naming
PRODUCT_DEVICE := m7
PRODUCT_NAME := cm_m7
PRODUCT_BRAND := htc
PRODUCT_MODEL := One
PRODUCT_MANUFACTURER := HTC

# Device overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=m7 \
    BUILD_ID=LMY47O.H18 \
    PRIVATE_BUILD_DESC="6.04.1700.18 CL536258 release-keys" \
    BUILD_FINGERPRINT="htc/m7_google/m7:5.1/LMY47O.H18/666675:user/release-keys"
