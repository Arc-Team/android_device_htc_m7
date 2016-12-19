# Copyright (C) 2013 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m7
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
USE_CLANG_PLATFORM_BUILD := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Kernel
BOARD_KERNEL_BASE := 0x80600000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=qcom user_debug=31
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01800000
TARGET_KERNEL_SOURCE := kernel/htc/msm8960
TARGET_KERNEL_CONFIG := m7_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_HTC_CSDCLIENT := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/m7/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/m7/bluetooth/libbt_vndcfg.txt

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
HAVE_ADRENO_SOURCE := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Camera
TARGET_DISPLAY_INSECURE_MM_HEAP := true
USE_DEVICE_SPECIFIC_CAMERA := true

# WiFi
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcm4335_apsta_b0.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcm4335_p2p_b0.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcm4335_b0.bin"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1946156032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27917287424
BOARD_CACHEIMAGE_PARTITION_SIZE := 671088128
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
TARGET_RECOVERY_DEVICE_MODULES += chargeled
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_FSTAB := device/htc/m7/rootdir/etc/fstab.qcom
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := ../../../device/htc/m7/ril

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/htc/m7/sepolicy

# Vendor
BOARD_VENDOR := htc

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# CMHW
BOARD_HARDWARE_CLASS := device/htc/m7/cmhw

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true

# Assert
TARGET_OTA_ASSERT_DEVICE := m7,m7att,m7tmo,m7ul

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/m7/overlay

# Includes
TARGET_SPECIFIC_HEADER_PATH += device/htc/m7/include

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode
