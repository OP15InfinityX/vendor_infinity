# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# build-manifest.xml
BUILD_BROKEN_SRC_DIR_RW_ALLOWLIST := $(abspath .repo/manifests.git)

# Recovery
BOARD_USES_FULL_RECOVERY_IMAGE ?= true

# Full OTA blocks as zstd instead of xz: a slightly bigger zip that recovery
# unpacks several times faster.
BOARD_OTA_ENABLE_REPLACE_ZSTD ?= true

include vendor/infinity/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
    include hardware/qcom-caf/common/BoardConfigQcom.mk
endif

include vendor/infinity/config/BoardConfigSoong.mk
