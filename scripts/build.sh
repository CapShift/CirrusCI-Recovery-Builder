#!/bin/bash

# Source Configs
source $CONFIG

cd /tmp/ci
# Prepare the Build Environment
source build/envsetup.sh
lunch ${MAKEFILE}-eng
export ALLOW_MISSING_DEPENDENCIES=true
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 20G
ccache -o compression=true
ccache -z

mka $TARGET

# Exit
exit 0
