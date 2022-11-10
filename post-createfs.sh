#!/bin/sh

set -e

FWUP_CONFIG=$NERVES_DEFCONFIG_DIR/fwup.conf

# Run the common post-image processing for nerves
$BR2_EXTERNAL_NERVES_PATH/board/nerves-common/post-createfs.sh $TARGET_DIR $FWUP_CONFIG

# Prepare imx bootloader image
$BR2_EXTERNAL_NERVES_PATH/buildroot/board/freescale/common/imx/imx8-bootloader-prepare.sh "nil" $BINARIES_DIR/imx8mp-hummingboard-pulse.dtb
