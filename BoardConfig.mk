#
# Copyright (C) 2014 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

# inherit from the proprietary version
-include vendor/symphony/s9321/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/symphony/s9321/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := $(TARGET_CPU_VARIANT)

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t148
TARGET_TEGRA_FAMILY := t14x
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_USE_TEGRA_BIONIC_OPTIMIZATION := true
TARGET_USE_TEGRA11_MEMCPY_OPTIMIZATION := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

# Optimization Flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mcpu=cortex-a9 -mfpu=neon
TARGET_GLOBAL_CFLAGS += -fpic -fno-short-enums -pipe -funsafe-math-optimizations -ffinite-math-only
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mcpu=cortex-a9 -mfpu=neon
TARGET_GLOBAL_CPPFLAGS += -fpic -fno-short-enums -pipe -funsafe-math-optimizations -ffinite-math-only
TARGET_EXTRA_CFLAGS += $(call cc-option,  -marm -march=armv7-a)

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/symphony/s9321
#TARGET_KERNEL_CONFIG := tegra_stanip76_android_defconfig
TARGET_KERNEL_CONFIG := tegra_s9321_stanip76_defconfig
#BOARD_KERNEL_CMDLINE := "androidboot.selinux=permissive"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14061404160
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_HARDWARE_CLASS := device/symphony/s9321/cmhw/

# Assert
TARGET_OTA_ASSERT_DEVICE := s9321

#SET_DCP_CURRENT_LIMIT_2A := true
#USE_E2FSPROGS := true

# Graphics
USE_OPENGL_RENDERER := true
NEED_WORKAROUND_CORTEX_A9_745320 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_USES_GL_VENDOR_EXTENSIONS := true
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#BOARD_USE_MHEAP_SCREENSHOT := true
#BOARD_EGL_SKIP_FIRST_DEQUEUE := true

COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR0_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS -D__ARM_CACHE_LINE_SIZE=32
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "/data/misc/wifi/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/data/misc/wifi/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"

# TWRP RECOVERY
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/symphony/s9321/recovery/graphics.c
DEVICE_RESOLUTION := 1080x1920
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_SKIA_LCDTEXT := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_BRIGHTNESS_PATH := /sys/devices/platform/pwm-backlight/backlight/pwm-backlight/brightness
TW_MAX_BRIGHTESS := 255
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/tegra-udc.0/gadget/lun0/file

