#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/sirius

# Assert
TARGET_OTA_ASSERT_DEVICE := sirius

# Audio
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true


# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Kernel
TARGET_KERNEL_CONFIG := sirius_defconfig

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event3"

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/xiaomi/sirius/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private



# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_sirius
TARGET_RECOVERY_DEVICE_MODULES := libinit_sirius
