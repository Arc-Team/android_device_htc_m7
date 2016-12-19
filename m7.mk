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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/BCM4335B0_002.001.006.0296.0297.hcd:system/etc/firmware/BCM4335B0_002.001.006.0296.0297.hcd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/efsks:system/bin/efsks \
    $(LOCAL_PATH)/prebuilt/bin/netmgrd:system/bin/netmgrd \
    $(LOCAL_PATH)/prebuilt/bin/qcks:system/bin/qcks \
    $(LOCAL_PATH)/prebuilt/bin/qmuxd:system/bin/qmuxd \
    $(LOCAL_PATH)/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    $(LOCAL_PATH)/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    $(LOCAL_PATH)/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    $(LOCAL_PATH)/prebuilt/lib/libidl.so:system/lib/libidl.so \
    $(LOCAL_PATH)/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    $(LOCAL_PATH)/prebuilt/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
    $(LOCAL_PATH)/prebuilt/lib/libqdi.so:system/lib/libqdi.so \
    $(LOCAL_PATH)/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    $(LOCAL_PATH)/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    $(LOCAL_PATH)/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix

# Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio
PRODUCT_PACKAGES += \
    audio_amplifier.msm8960

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilt/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960 \
    libcamera_shim \
    Snap

# Gello
PRODUCT_PACKAGES += \
    Gello

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/gps.conf:system/etc/gps.conf

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8960

# Log
PRODUCT_PACKAGES += \
    liblog_shim

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc \
    libnfc_jni \
    libnfc_ndef \
    libpn544_fw \
    Nfc \
    nfc.msm8960 \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# PowerHAL
PRODUCT_PACKAGES += \
    libqc-opt_shim

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/thermald.conf:system/etc/thermald.conf

# Voice processing
PRODUCT_PACKAGES += \
    libqcomvoiceprocessing

# WiFi
PRODUCT_PACKAGES += \
    libnetcmdiface

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/calibration:system/etc/calibration \
    $(LOCAL_PATH)/prebuilt/etc/calibration_EMEA:system/etc/calibration_EMEA \
    $(LOCAL_PATH)/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/akmd:system/bin/akmd \
    $(LOCAL_PATH)/prebuilt/bin/cir_fw_update:system/bin/cir_fw_update \
    $(LOCAL_PATH)/prebuilt/bin/ks:system/bin/ks \
    $(LOCAL_PATH)/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    $(LOCAL_PATH)/prebuilt/bin/mpdecision:system/bin/mpdecision \
    $(LOCAL_PATH)/prebuilt/bin/qseecomd:system/bin/qseecomd \
    $(LOCAL_PATH)/prebuilt/bin/radish:system/bin/radish \
    $(LOCAL_PATH)/prebuilt/bin/thermald:system/bin/thermald \
    $(LOCAL_PATH)/prebuilt/etc/agps_rm:system/etc/agps_rm \
    $(LOCAL_PATH)/prebuilt/etc/cir.img:system/etc/cir.img \
    $(LOCAL_PATH)/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fw_bcm4335_apsta_b0.bin:system/etc/firmware/fw_bcm4335_apsta_b0.bin \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fw_bcm4335_b0.bin:system/etc/firmware/fw_bcm4335_b0.bin \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fw_bcm4335_p2p_b0.bin:system/etc/firmware/fw_bcm4335_p2p_b0.bin \
    $(LOCAL_PATH)/prebuilt/etc/firmware/hcheck.b00:system/etc/firmware/hcheck.b00 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/hcheck.b01:system/etc/firmware/hcheck.b01 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/hcheck.b02:system/etc/firmware/hcheck.b02 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/hcheck.b03:system/etc/firmware/hcheck.b03 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/hcheck.mdt:system/etc/firmware/hcheck.mdt \
    $(LOCAL_PATH)/prebuilt/etc/firmware/ILP0100_IPM_Code_out.bin:system/etc/firmware/ILP0100_IPM_Code_out.bin \
    $(LOCAL_PATH)/prebuilt/etc/firmware/ILP0100_IPM_Data_out.bin:system/etc/firmware/ILP0100_IPM_Data_out.bin \
    $(LOCAL_PATH)/prebuilt/etc/firmware/lscbuffer_rev2.bin:system/etc/firmware/lscbuffer_rev2.bin \
    $(LOCAL_PATH)/prebuilt/etc/firmware/tzapps.b00:system/etc/firmware/tzapps.b00 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/tzapps.b01:system/etc/firmware/tzapps.b01 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/tzapps.b02:system/etc/firmware/tzapps.b02 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/tzapps.b03:system/etc/firmware/tzapps.b03 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/tzapps.mdt:system/etc/firmware/tzapps.mdt \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc.b00:system/etc/firmware/vidc.b00 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc.b01:system/etc/firmware/vidc.b01 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc.b02:system/etc/firmware/vidc.b02 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc.b03:system/etc/firmware/vidc.b03 \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc.mdt:system/etc/firmware/vidc.mdt \
    $(LOCAL_PATH)/prebuilt/etc/hldm.bin:system/etc/hldm.bin \
    $(LOCAL_PATH)/prebuilt/etc/hltof.bin:system/etc/hltof.bin \
    $(LOCAL_PATH)/prebuilt/etc/hltrd.bin:system/etc/hltrd.bin \
    $(LOCAL_PATH)/prebuilt/etc/tfa/deftcoefA_l.speaker:system/etc/tfa/deftcoefA_l.speaker \
    $(LOCAL_PATH)/prebuilt/etc/tfa/deftcoefA.speaker:system/etc/tfa/deftcoefA.speaker \
    $(LOCAL_PATH)/prebuilt/etc/tfa/fm.config:system/etc/tfa/fm.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/fm.eq:system/etc/tfa/fm.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/fm_l.config:system/etc/tfa/fm_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/fm_l.eq:system/etc/tfa/fm_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/fm_l.preset:system/etc/tfa/fm_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/fm.preset:system/etc/tfa/fm.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playbackbeats.config:system/etc/tfa/playbackbeats.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playbackbeats.eq:system/etc/tfa/playbackbeats.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playbackbeats_l.config:system/etc/tfa/playbackbeats_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playbackbeats_l.eq:system/etc/tfa/playbackbeats_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playbackbeats_l.preset:system/etc/tfa/playbackbeats_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playbackbeats.preset:system/etc/tfa/playbackbeats.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playback.config:system/etc/tfa/playback.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playback.eq:system/etc/tfa/playback.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playback_l.config:system/etc/tfa/playback_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playback_l.eq:system/etc/tfa/playback_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playback_l.preset:system/etc/tfa/playback_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/playback.preset:system/etc/tfa/playback.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/recorder.config:system/etc/tfa/recorder.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/recorder.eq:system/etc/tfa/recorder.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/recorder_l.config:system/etc/tfa/recorder_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/recorder_l.eq:system/etc/tfa/recorder_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/recorder_l.preset:system/etc/tfa/recorder_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/recorder.preset:system/etc/tfa/recorder.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/ring.config:system/etc/tfa/ring.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/ring.eq:system/etc/tfa/ring.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/ring_l.config:system/etc/tfa/ring_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/ring_l.eq:system/etc/tfa/ring_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/ring_l.preset:system/etc/tfa/ring_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/ring.preset:system/etc/tfa/ring.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/tfa9887_l.patch:system/etc/tfa/tfa9887_l.patch \
    $(LOCAL_PATH)/prebuilt/etc/tfa/tfa9887_l.speaker:system/etc/tfa/tfa9887_l.speaker \
    $(LOCAL_PATH)/prebuilt/etc/tfa/tfa9887.patch:system/etc/tfa/tfa9887.patch \
    $(LOCAL_PATH)/prebuilt/etc/tfa/tfa9887.speaker:system/etc/tfa/tfa9887.speaker \
    $(LOCAL_PATH)/prebuilt/etc/tfa/video.config:system/etc/tfa/video.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/video.eq:system/etc/tfa/video.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/video_l.config:system/etc/tfa/video_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/video_l.eq:system/etc/tfa/video_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/video_l.preset:system/etc/tfa/video_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/video.preset:system/etc/tfa/video.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voice.config:system/etc/tfa/voice.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voice.eq:system/etc/tfa/voice.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voice_l.config:system/etc/tfa/voice_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voice_l.eq:system/etc/tfa/voice_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voice_l.preset:system/etc/tfa/voice_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voice.preset:system/etc/tfa/voice.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voiceWB.eq:system/etc/tfa/voiceWB.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voiceWB_l.eq:system/etc/tfa/voiceWB_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voip.config:system/etc/tfa/voip.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voip.eq:system/etc/tfa/voip.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voip_l.config:system/etc/tfa/voip_l.config \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voip_l.eq:system/etc/tfa/voip_l.eq \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voip_l.preset:system/etc/tfa/voip_l.preset \
    $(LOCAL_PATH)/prebuilt/etc/tfa/voip.preset:system/etc/tfa/voip.preset \
    $(LOCAL_PATH)/prebuilt/lib/hw/camera.vendor.msm8960.so:system/lib/hw/camera.vendor.msm8960.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/consumerir.default.so:system/lib/hw/consumerir.default.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    $(LOCAL_PATH)/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    $(LOCAL_PATH)/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
    $(LOCAL_PATH)/prebuilt/lib/libBeautyChat.so:system/lib/libBeautyChat.so \
    $(LOCAL_PATH)/prebuilt/lib/libcameraasd.so:system/lib/libcameraasd.so \
    $(LOCAL_PATH)/prebuilt/lib/libcameraface.so:system/lib/libcameraface.so \
    $(LOCAL_PATH)/prebuilt/lib/libcamerapp.so:system/lib/libcamerapp.so \
    $(LOCAL_PATH)/prebuilt/lib/libcam_oem_plugin.so:system/lib/libcam_oem_plugin.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ar0260_default_video.so:system/lib/libchromatix_ar0260_default_video.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ar0260_hdr.so:system/lib/libchromatix_ar0260_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ar0260_preview.so:system/lib/libchromatix_ar0260_preview.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ar0260_zsl.so:system/lib/libchromatix_ar0260_zsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx135_default_video.so:system/lib/libchromatix_imx135_default_video.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx135_hdr.so:system/lib/libchromatix_imx135_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx135_hfr.so:system/lib/libchromatix_imx135_hfr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx135_preview.so:system/lib/libchromatix_imx135_preview.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx135_zsl.so:system/lib/libchromatix_imx135_zsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx175_default_video.so:system/lib/libchromatix_imx175_default_video.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx175_hdr.so:system/lib/libchromatix_imx175_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx175_hfr.so:system/lib/libchromatix_imx175_hfr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx175_preview.so:system/lib/libchromatix_imx175_preview.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_imx175_zsl.so:system/lib/libchromatix_imx175_zsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov2722_default_video.so:system/lib/libchromatix_ov2722_default_video.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov2722_hdr.so:system/lib/libchromatix_ov2722_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov2722_preview.so:system/lib/libchromatix_ov2722_preview.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov2722_zsl.so:system/lib/libchromatix_ov2722_zsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_default_video.so:system/lib/libchromatix_ov4688_default_video.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_hdr.so:system/lib/libchromatix_ov4688_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_hfr_60fps.so:system/lib/libchromatix_ov4688_hfr_60fps.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_hfr.so:system/lib/libchromatix_ov4688_hfr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_night.so:system/lib/libchromatix_ov4688_night.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_preview.so:system/lib/libchromatix_ov4688_preview.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_video_hdr.so:system/lib/libchromatix_ov4688_video_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_zoe.so:system/lib/libchromatix_ov4688_zoe.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_ov4688_zsl.so:system/lib/libchromatix_ov4688_zsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_default_video.so:system/lib/libchromatix_vd6869_default_video.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_hdr.so:system/lib/libchromatix_vd6869_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_hfr_60fps.so:system/lib/libchromatix_vd6869_hfr_60fps.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_hfr.so:system/lib/libchromatix_vd6869_hfr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_night.so:system/lib/libchromatix_vd6869_night.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_preview.so:system/lib/libchromatix_vd6869_preview.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_video_hdr.so:system/lib/libchromatix_vd6869_video_hdr.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_zoe.so:system/lib/libchromatix_vd6869_zoe.so \
    $(LOCAL_PATH)/prebuilt/lib/libchromatix_vd6869_zsl.so:system/lib/libchromatix_vd6869_zsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libcsd-client.so:system/lib/libcsd-client.so \
    $(LOCAL_PATH)/prebuilt/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
    $(LOCAL_PATH)/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    $(LOCAL_PATH)/prebuilt/lib/libgeofence.so:system/lib/libgeofence.so \
    $(LOCAL_PATH)/prebuilt/lib/libhtccamera_yushaniiproc.so:system/lib/libhtccamera_yushaniiproc.so \
    $(LOCAL_PATH)/prebuilt/lib/libHTC_DIS.so:system/lib/libHTC_DIS.so \
    $(LOCAL_PATH)/prebuilt/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    $(LOCAL_PATH)/prebuilt/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
    $(LOCAL_PATH)/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    $(LOCAL_PATH)/prebuilt/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    $(LOCAL_PATH)/prebuilt/lib/libimu.so:system/lib/libimu.so \
    $(LOCAL_PATH)/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/prebuilt/lib/libmllite.so:system/lib/libmllite.so \
    $(LOCAL_PATH)/prebuilt/lib/libmlplatform.so:system/lib/libmlplatform.so \
    $(LOCAL_PATH)/prebuilt/lib/libmm-abl-oem.so:system/lib/libmm-abl-oem.so \
    $(LOCAL_PATH)/prebuilt/lib/libmm-abl.so:system/lib/libmm-abl.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_aec.so:system/lib/libmmcamera_aec.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_rawchipproc.so:system/lib/libmmcamera_rawchipproc.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_rubik.so:system/lib/libmmcamera_rubik.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    $(LOCAL_PATH)/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    $(LOCAL_PATH)/prebuilt/lib/libmpl_jni.so:system/lib/libmpl_jni.so \
    $(LOCAL_PATH)/prebuilt/lib/libmpl.so:system/lib/libmpl.so \
    $(LOCAL_PATH)/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilt/lib/libposteffect.so:system/lib/libposteffect.so \
    $(LOCAL_PATH)/prebuilt/lib/libwriteback.so:system/lib/libwriteback.so \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/keymaster/keymaster.b00:system/vendor/firmware/keymaster/keymaster.b00 \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/keymaster/keymaster.b01:system/vendor/firmware/keymaster/keymaster.b01 \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/keymaster/keymaster.b02:system/vendor/firmware/keymaster/keymaster.b02 \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/keymaster/keymaster.b03:system/vendor/firmware/keymaster/keymaster.b03 \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/keymaster/keymaster.mdt:system/vendor/firmware/keymaster/keymaster.mdt \
    $(LOCAL_PATH)/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libbccQTI.so:system/vendor/lib/libbccQTI.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/m7/overlay

# Set those variables here to overwrite the inherited values.
PRODUCT_BRAND := htc
PRODUCT_DEVICE := m7
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One
PRODUCT_NAME := full_m7
