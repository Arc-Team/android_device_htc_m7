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
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio
PRODUCT_PACKAGES += \
    audio_amplifier.msm8960 \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libqcomvoiceprocessing \
    libaudio-resampler \
    tinymix

# Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

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

# MSM8960
PRODUCT_PACKAGES += \
    lights.msm8960 \
    power.msm8960 \
    camera.msm8960 \
    gps.msm8960 \
    keystore.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# WiFi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

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

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Shims
PRODUCT_PACKAGES += \
    libcamera_shim \
    liblog_shim \
    libqc-opt_shim

# Misc
PRODUCT_PACKAGES += \
    Snap \
    Gello

# Default Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.adb.secure=0

# Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Libstagefright
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Executables
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/bin/akmd:system/bin/akmd \
    device/htc/m7/prebuilt/bin/efsks:system/bin/efsks \
    device/htc/m7/prebuilt/bin/ks:system/bin/ks \
    device/htc/m7/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/htc/m7/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/htc/m7/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/htc/m7/prebuilt/bin/qcks:system/bin/qcks \
    device/htc/m7/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/htc/m7/prebuilt/bin/radish:system/bin/radish \
    device/htc/m7/prebuilt/bin/thermald:system/bin/thermald

# EMEA
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/calibration:system/etc/calibration \
    device/htc/m7/prebuilt/etc/calibration_EMEA:system/etc/calibration_EMEA

# Irda
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/bin/cir_fw_update:system/bin/cir_fw_update \
    device/htc/m7/prebuilt/etc/cir.img:system/etc/cir.img \
    device/htc/m7/prebuilt/lib/hw/consumerir.default.so:system/lib/hw/consumerir.default.so

# Modem firmware
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/firmware/hcheck.b00:system/etc/firmware/hcheck.b00 \
    device/htc/m7/prebuilt/etc/firmware/hcheck.b01:system/etc/firmware/hcheck.b01 \
    device/htc/m7/prebuilt/etc/firmware/hcheck.b02:system/etc/firmware/hcheck.b02 \
    device/htc/m7/prebuilt/etc/firmware/hcheck.b03:system/etc/firmware/hcheck.b03 \
    device/htc/m7/prebuilt/etc/firmware/hcheck.mdt:system/etc/firmware/hcheck.mdt \
    device/htc/m7/prebuilt/etc/firmware/lscbuffer_rev2.bin:system/etc/firmware/lscbuffer_rev2.bin

# WiFi
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/htc/m7/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/htc/m7/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/htc/m7/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/htc/m7/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# WLAN firmware
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/firmware/BCM4335B0_002.001.006.0296.0297.hcd:system/etc/firmware/BCM4335B0_002.001.006.0296.0297.hcd \
    device/htc/m7/prebuilt/etc/firmware/fw_bcm4335_apsta_b0.bin:system/etc/firmware/fw_bcm4335_apsta_b0.bin \
    device/htc/m7/prebuilt/etc/firmware/fw_bcm4335_b0.bin:system/etc/firmware/fw_bcm4335_b0.bin \
    device/htc/m7/prebuilt/etc/firmware/fw_bcm4335_p2p_b0.bin:system/etc/firmware/fw_bcm4335_p2p_b0.bin

# Audio
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/htc/m7/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/m7/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/htc/m7/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/htc/m7/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
    device/htc/m7/prebuilt/lib/libcsd-client.so:system/lib/libcsd-client.so \
    device/htc/m7/prebuilt/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Qualcomm
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/htc/m7/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/htc/m7/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    device/htc/m7/prebuilt/lib/libidl.so:system/lib/libidl.so \
    device/htc/m7/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/htc/m7/prebuilt/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
    device/htc/m7/prebuilt/lib/libqdi.so:system/lib/libqdi.so \
    device/htc/m7/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
    device/htc/m7/prebuilt/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    device/htc/m7/prebuilt/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
    device/htc/m7/prebuilt/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    device/htc/m7/prebuilt/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    device/htc/m7/prebuilt/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    device/htc/m7/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/htc/m7/prebuilt/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so

# NFC
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/vendor/firmware/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Thermal
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/thermald.conf:system/etc/thermald.conf

# Camera
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/lib/hw/camera.vendor.msm8960.so:system/lib/hw/camera.vendor.msm8960.so \
    device/htc/m7/prebuilt/lib/libBeautyChat.so:system/lib/libBeautyChat.so \
    device/htc/m7/prebuilt/lib/libcameraasd.so:system/lib/libcameraasd.so \
    device/htc/m7/prebuilt/lib/libcameraface.so:system/lib/libcameraface.so \
    device/htc/m7/prebuilt/lib/libcamerapp.so:system/lib/libcamerapp.so \
    device/htc/m7/prebuilt/lib/libcam_oem_plugin.so:system/lib/libcam_oem_plugin.so \
    device/htc/m7/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/htc/m7/prebuilt/lib/libhtccamera_yushaniiproc.so:system/lib/libhtccamera_yushaniiproc.so \
    device/htc/m7/prebuilt/lib/libHTC_DIS.so:system/lib/libHTC_DIS.so \
    device/htc/m7/prebuilt/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
    device/htc/m7/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/htc/m7/prebuilt/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/htc/m7/prebuilt/lib/libmm-abl-oem.so:system/lib/libmm-abl-oem.so \
    device/htc/m7/prebuilt/lib/libmm-abl.so:system/lib/libmm-abl.so \
    device/htc/m7/prebuilt/lib/libmmcamera_aec.so:system/lib/libmmcamera_aec.so \
    device/htc/m7/prebuilt/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/htc/m7/prebuilt/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/htc/m7/prebuilt/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    device/htc/m7/prebuilt/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    device/htc/m7/prebuilt/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    device/htc/m7/prebuilt/lib/libmmcamera_rawchipproc.so:system/lib/libmmcamera_rawchipproc.so \
    device/htc/m7/prebuilt/lib/libmmcamera_rubik.so:system/lib/libmmcamera_rubik.so \
    device/htc/m7/prebuilt/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    device/htc/m7/prebuilt/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    device/htc/m7/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/htc/m7/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/htc/m7/prebuilt/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/htc/m7/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/htc/m7/prebuilt/lib/libposteffect.so:system/lib/libposteffect.so \
    device/htc/m7/prebuilt/lib/libwriteback.so:system/lib/libwriteback.so

# Camera firmware
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/firmware/ILP0100_IPM_Code_out.bin:system/etc/firmware/ILP0100_IPM_Code_out.bin \
    device/htc/m7/prebuilt/etc/firmware/ILP0100_IPM_Data_out.bin:system/etc/firmware/ILP0100_IPM_Data_out.bin

# Chromatix
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/lib/libchromatix_ar0260_default_video.so:system/lib/libchromatix_ar0260_default_video.so \
    device/htc/m7/prebuilt/lib/libchromatix_ar0260_hdr.so:system/lib/libchromatix_ar0260_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_ar0260_preview.so:system/lib/libchromatix_ar0260_preview.so \
    device/htc/m7/prebuilt/lib/libchromatix_ar0260_zsl.so:system/lib/libchromatix_ar0260_zsl.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx135_default_video.so:system/lib/libchromatix_imx135_default_video.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx135_hdr.so:system/lib/libchromatix_imx135_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx135_hfr.so:system/lib/libchromatix_imx135_hfr.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx135_preview.so:system/lib/libchromatix_imx135_preview.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx135_zsl.so:system/lib/libchromatix_imx135_zsl.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx175_default_video.so:system/lib/libchromatix_imx175_default_video.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx175_hdr.so:system/lib/libchromatix_imx175_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx175_hfr.so:system/lib/libchromatix_imx175_hfr.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx175_preview.so:system/lib/libchromatix_imx175_preview.so \
    device/htc/m7/prebuilt/lib/libchromatix_imx175_zsl.so:system/lib/libchromatix_imx175_zsl.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov2722_default_video.so:system/lib/libchromatix_ov2722_default_video.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov2722_hdr.so:system/lib/libchromatix_ov2722_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov2722_preview.so:system/lib/libchromatix_ov2722_preview.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov2722_zsl.so:system/lib/libchromatix_ov2722_zsl.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_default_video.so:system/lib/libchromatix_ov4688_default_video.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_hdr.so:system/lib/libchromatix_ov4688_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_hfr_60fps.so:system/lib/libchromatix_ov4688_hfr_60fps.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_hfr.so:system/lib/libchromatix_ov4688_hfr.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_night.so:system/lib/libchromatix_ov4688_night.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_preview.so:system/lib/libchromatix_ov4688_preview.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_video_hdr.so:system/lib/libchromatix_ov4688_video_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_zoe.so:system/lib/libchromatix_ov4688_zoe.so \
    device/htc/m7/prebuilt/lib/libchromatix_ov4688_zsl.so:system/lib/libchromatix_ov4688_zsl.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_default_video.so:system/lib/libchromatix_vd6869_default_video.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_hdr.so:system/lib/libchromatix_vd6869_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_hfr_60fps.so:system/lib/libchromatix_vd6869_hfr_60fps.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_hfr.so:system/lib/libchromatix_vd6869_hfr.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_night.so:system/lib/libchromatix_vd6869_night.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_preview.so:system/lib/libchromatix_vd6869_preview.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_video_hdr.so:system/lib/libchromatix_vd6869_video_hdr.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_zoe.so:system/lib/libchromatix_vd6869_zoe.so \
    device/htc/m7/prebuilt/lib/libchromatix_vd6869_zsl.so:system/lib/libchromatix_vd6869_zsl.so

# Radio
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/htc/m7/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/htc/m7/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so

# Media
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/m7/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/m7/prebuilt/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    device/htc/m7/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so

# GPS
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/htc/m7/prebuilt/lib/libgeofence.so:system/lib/libgeofence.so \
    device/htc/m7/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so

# Sensors
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    device/htc/m7/prebuilt/lib/libimu.so:system/lib/libimu.so \
    device/htc/m7/prebuilt/lib/libmllite.so:system/lib/libmllite.so \
    device/htc/m7/prebuilt/lib/libmlplatform.so:system/lib/libmlplatform.so \
    device/htc/m7/prebuilt/lib/libmpl_jni.so:system/lib/libmpl_jni.so \
    device/htc/m7/prebuilt/lib/libmpl.so:system/lib/libmpl.so

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/m7/prebuilt/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/m7/prebuilt/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/m7/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input Device Config
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/m7/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Graphics
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/htc/m7/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/htc/m7/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/htc/m7/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/htc/m7/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/htc/m7/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/htc/m7/prebuilt/vendor/lib/libbccQTI.so:system/vendor/lib/libbccQTI.so \
    device/htc/m7/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/htc/m7/prebuilt/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    device/htc/m7/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/htc/m7/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/htc/m7/prebuilt/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    device/htc/m7/prebuilt/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    device/htc/m7/prebuilt/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    device/htc/m7/prebuilt/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    device/htc/m7/prebuilt/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so

# Graphics firmware
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/htc/m7/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/htc/m7/prebuilt/etc/firmware/vidc.b00:system/etc/firmware/vidc.b00 \
    device/htc/m7/prebuilt/etc/firmware/vidc.b01:system/etc/firmware/vidc.b01 \
    device/htc/m7/prebuilt/etc/firmware/vidc.b02:system/etc/firmware/vidc.b02 \
    device/htc/m7/prebuilt/etc/firmware/vidc.b03:system/etc/firmware/vidc.b03 \
    device/htc/m7/prebuilt/etc/firmware/vidc.mdt:system/etc/firmware/vidc.mdt \
    device/htc/m7/prebuilt/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw

# Widevine firmware
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/firmware/tzapps.b00:system/etc/firmware/tzapps.b00 \
    device/htc/m7/prebuilt/etc/firmware/tzapps.b01:system/etc/firmware/tzapps.b01 \
    device/htc/m7/prebuilt/etc/firmware/tzapps.b02:system/etc/firmware/tzapps.b02 \
    device/htc/m7/prebuilt/etc/firmware/tzapps.b03:system/etc/firmware/tzapps.b03 \
    device/htc/m7/prebuilt/etc/firmware/tzapps.mdt:system/etc/firmware/tzapps.mdt

# Configuration files
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/etc/agps_rm:system/etc/agps_rm \
    device/htc/m7/prebuilt/etc/hldm.bin:system/etc/hldm.bin \
    device/htc/m7/prebuilt/etc/hltof.bin:system/etc/hltof.bin \
    device/htc/m7/prebuilt/etc/hltrd.bin:system/etc/hltrd.bin \
    device/htc/m7/prebuilt/etc/tfa/deftcoefA_l.speaker:system/etc/tfa/deftcoefA_l.speaker \
    device/htc/m7/prebuilt/etc/tfa/deftcoefA.speaker:system/etc/tfa/deftcoefA.speaker \
    device/htc/m7/prebuilt/etc/tfa/fm.config:system/etc/tfa/fm.config \
    device/htc/m7/prebuilt/etc/tfa/fm.eq:system/etc/tfa/fm.eq \
    device/htc/m7/prebuilt/etc/tfa/fm_l.config:system/etc/tfa/fm_l.config \
    device/htc/m7/prebuilt/etc/tfa/fm_l.eq:system/etc/tfa/fm_l.eq \
    device/htc/m7/prebuilt/etc/tfa/fm_l.preset:system/etc/tfa/fm_l.preset \
    device/htc/m7/prebuilt/etc/tfa/fm.preset:system/etc/tfa/fm.preset \
    device/htc/m7/prebuilt/etc/tfa/playbackbeats.config:system/etc/tfa/playbackbeats.config \
    device/htc/m7/prebuilt/etc/tfa/playbackbeats.eq:system/etc/tfa/playbackbeats.eq \
    device/htc/m7/prebuilt/etc/tfa/playbackbeats_l.config:system/etc/tfa/playbackbeats_l.config \
    device/htc/m7/prebuilt/etc/tfa/playbackbeats_l.eq:system/etc/tfa/playbackbeats_l.eq \
    device/htc/m7/prebuilt/etc/tfa/playbackbeats_l.preset:system/etc/tfa/playbackbeats_l.preset \
    device/htc/m7/prebuilt/etc/tfa/playbackbeats.preset:system/etc/tfa/playbackbeats.preset \
    device/htc/m7/prebuilt/etc/tfa/playback.config:system/etc/tfa/playback.config \
    device/htc/m7/prebuilt/etc/tfa/playback.eq:system/etc/tfa/playback.eq \
    device/htc/m7/prebuilt/etc/tfa/playback_l.config:system/etc/tfa/playback_l.config \
    device/htc/m7/prebuilt/etc/tfa/playback_l.eq:system/etc/tfa/playback_l.eq \
    device/htc/m7/prebuilt/etc/tfa/playback_l.preset:system/etc/tfa/playback_l.preset \
    device/htc/m7/prebuilt/etc/tfa/playback.preset:system/etc/tfa/playback.preset \
    device/htc/m7/prebuilt/etc/tfa/recorder.config:system/etc/tfa/recorder.config \
    device/htc/m7/prebuilt/etc/tfa/recorder.eq:system/etc/tfa/recorder.eq \
    device/htc/m7/prebuilt/etc/tfa/recorder_l.config:system/etc/tfa/recorder_l.config \
    device/htc/m7/prebuilt/etc/tfa/recorder_l.eq:system/etc/tfa/recorder_l.eq \
    device/htc/m7/prebuilt/etc/tfa/recorder_l.preset:system/etc/tfa/recorder_l.preset \
    device/htc/m7/prebuilt/etc/tfa/recorder.preset:system/etc/tfa/recorder.preset \
    device/htc/m7/prebuilt/etc/tfa/ring.config:system/etc/tfa/ring.config \
    device/htc/m7/prebuilt/etc/tfa/ring.eq:system/etc/tfa/ring.eq \
    device/htc/m7/prebuilt/etc/tfa/ring_l.config:system/etc/tfa/ring_l.config \
    device/htc/m7/prebuilt/etc/tfa/ring_l.eq:system/etc/tfa/ring_l.eq \
    device/htc/m7/prebuilt/etc/tfa/ring_l.preset:system/etc/tfa/ring_l.preset \
    device/htc/m7/prebuilt/etc/tfa/ring.preset:system/etc/tfa/ring.preset \
    device/htc/m7/prebuilt/etc/tfa/tfa9887_l.patch:system/etc/tfa/tfa9887_l.patch \
    device/htc/m7/prebuilt/etc/tfa/tfa9887_l.speaker:system/etc/tfa/tfa9887_l.speaker \
    device/htc/m7/prebuilt/etc/tfa/tfa9887.patch:system/etc/tfa/tfa9887.patch \
    device/htc/m7/prebuilt/etc/tfa/tfa9887.speaker:system/etc/tfa/tfa9887.speaker \
    device/htc/m7/prebuilt/etc/tfa/video.config:system/etc/tfa/video.config \
    device/htc/m7/prebuilt/etc/tfa/video.eq:system/etc/tfa/video.eq \
    device/htc/m7/prebuilt/etc/tfa/video_l.config:system/etc/tfa/video_l.config \
    device/htc/m7/prebuilt/etc/tfa/video_l.eq:system/etc/tfa/video_l.eq \
    device/htc/m7/prebuilt/etc/tfa/video_l.preset:system/etc/tfa/video_l.preset \
    device/htc/m7/prebuilt/etc/tfa/video.preset:system/etc/tfa/video.preset \
    device/htc/m7/prebuilt/etc/tfa/voice.config:system/etc/tfa/voice.config \
    device/htc/m7/prebuilt/etc/tfa/voice.eq:system/etc/tfa/voice.eq \
    device/htc/m7/prebuilt/etc/tfa/voice_l.config:system/etc/tfa/voice_l.config \
    device/htc/m7/prebuilt/etc/tfa/voice_l.eq:system/etc/tfa/voice_l.eq \
    device/htc/m7/prebuilt/etc/tfa/voice_l.preset:system/etc/tfa/voice_l.preset \
    device/htc/m7/prebuilt/etc/tfa/voice.preset:system/etc/tfa/voice.preset \
    device/htc/m7/prebuilt/etc/tfa/voiceWB.eq:system/etc/tfa/voiceWB.eq \
    device/htc/m7/prebuilt/etc/tfa/voiceWB_l.eq:system/etc/tfa/voiceWB_l.eq \
    device/htc/m7/prebuilt/etc/tfa/voip.config:system/etc/tfa/voip.config \
    device/htc/m7/prebuilt/etc/tfa/voip.eq:system/etc/tfa/voip.eq \
    device/htc/m7/prebuilt/etc/tfa/voip_l.config:system/etc/tfa/voip_l.config \
    device/htc/m7/prebuilt/etc/tfa/voip_l.eq:system/etc/tfa/voip_l.eq \
    device/htc/m7/prebuilt/etc/tfa/voip_l.preset:system/etc/tfa/voip_l.preset \
    device/htc/m7/prebuilt/etc/tfa/voip.preset:system/etc/tfa/voip.preset

# Keystore
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/vendor/firmware/keymaster/keymaster.b00:system/vendor/firmware/keymaster/keymaster.b00 \
    device/htc/m7/prebuilt/vendor/firmware/keymaster/keymaster.b01:system/vendor/firmware/keymaster/keymaster.b01 \
    device/htc/m7/prebuilt/vendor/firmware/keymaster/keymaster.b02:system/vendor/firmware/keymaster/keymaster.b02 \
    device/htc/m7/prebuilt/vendor/firmware/keymaster/keymaster.b03:system/vendor/firmware/keymaster/keymaster.b03 \
    device/htc/m7/prebuilt/vendor/firmware/keymaster/keymaster.mdt:system/vendor/firmware/keymaster/keymaster.mdt

# Widevine
PRODUCT_COPY_FILES += \
    device/htc/m7/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/htc/m7/prebuilt/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
    device/htc/m7/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    device/htc/m7/prebuilt/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
    device/htc/m7/prebuilt/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
    device/htc/m7/prebuilt/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so \
    device/htc/m7/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    device/htc/m7/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    device/htc/m7/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/htc/m7/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so
