#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
-include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/cepheus

# Root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := cepheus

# IR Camera
TARGET_FACE_UNLOCK_CAMERA_ID := 1

# Camera
USE_CAMERA_STUB := true

# Kernel
TARGET_KERNEL_CONFIG := cepheus_user_defconfig
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_CMDLINE += enforcing=0
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# NFC
TARGET_USES_NQ_NFC := true

# Inherit from the proprietary version
-include vendor/xiaomi/cepheus/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_cepheus
TARGET_RECOVERY_DEVICE_MODULES := libinit_cepheus

# Treble
BOARD_VNDK_RUNTIME_DISABLE := false

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Display
#TARGET_HAS_HDR_DISPLAY := true

# Dual Wi-Fi interface
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true