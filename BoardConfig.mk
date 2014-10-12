# Copyright (C) 2014 The Android Open Source Project
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

USE_CAMERA_STUB := true
BOARD_VENDOR := htc

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Board 
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_BOOTLOADER_BOARD_NAME := golfu

ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp

COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS -DNO_UPDATE_PREVIEW

# Compiler Optimization
#ARCH_ARM_HIGH_OPTIMIZATION := true
#ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true
#TARGET_USE_O3 := true

# Build
#TARGET_SYSTEMIMAGE_USE_SQUISHER := true

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE 
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/golfu
TARGET_KERNEL_CONFIG := golfu_defconfig
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x13000000

TARGET_SPECIFIC_HEADER_PATH := device/htc/golfu/include

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_PROVIDES_LIBAUDIO := true
TARGET_QCOM_TUNNEL_LPA_ENABLED := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
#BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
#BOARD_USES_SRS_TRUEMEDIA := true

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm7x27a

# SDcard support
#BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p32

# Vold
#BOARD_VOLD_MAX_PARTITIONS := 32
#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/golfu/bluetooth

# Wi-Fi
BOARD_HAS_ATH_WLAN          := true
TARGET_CUSTOM_WIFI          := ../../device/htc/golfu/libhardware_legacy/wifi/wifi.c
BOARD_WLAN_DEVICE           := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WPA_SUPPLICANT_VERSION      := VER_0_8_X
HOSTAPD_VERSION             := VER_0_8_X
WIFI_EXT_MODULE_PATH        := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME        := "cfg80211"
WIFI_EXT_MODULE_ARG         := ""
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_TEST_INTERFACE         := "sta"
WIFI_DRIVER_FW_PATH_STA     := "sta"
WIFI_DRIVER_FW_PATH_AP      := "ap"
WIFI_DRIVER_FW_PATH_P2P     := "p2p"

# Video
TARGET_QCOM_LEGACY_OMX := true 
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := golfu
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Dalvik
TARGET_ARCH_LOWMEM := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
#COMMON_GLOBAL_CFLAGS += -DHAVE_FM_RADIO - this duplicates definition in previous line and is not needed
BOARD_VENDOR_USE_AKMD := akm8975
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

# Graphics & CAF
BOARD_EGL_CFG := device/htc/golfu/proprietary/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true

# ION Support
TARGET_USES_ION := false

# RIL
BOARD_USES_LEGACY_RIL := true
BOARD_USE_NEW_LIBRIL_HTC := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS -DQCOM_LEGACY_CAM_PARAMS

# Add h/w acceleration in browser
#ENABLE_WEBGL := true
#WITH_JIT := true
#ENABLE_JSC_JIT := true
#JS_ENGINE := v8
#HTTP := chrome

# Webkit
#PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
#TARGET_FORCE_CPU_UPLOAD := true

# Touch screen compatibility for JB
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Custom liblights
TARGET_PROVIDES_LIBLIGHT := true

# Keep Size in check
#SMALLER_FONT_FOOTPRINT := true

# Power
TARGET_PROVIDES_POWERHAL := true

# Recovery
TARGET_RECOVERY_FSTAB := device/htc/golfu/ramdisk/fstab.golfu
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file"
#BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# TWRP
TARGET_RECOVERY_INITRC := device/htc/golfu/recovery/init-twrp.rc
DEVICE_RESOLUTION := 320x480
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
#TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.590849/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"font_7x16.h\"

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8909824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 836763136
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1023409664
BOARD_FLASH_BLOCK_SIZE := 2048
