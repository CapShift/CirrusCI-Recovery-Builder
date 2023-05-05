#!/bin/bash

# Source Vars
source $CONFIG
mkdir /tmp/ci
cd /tmp/ci
ls
repo init $TWRP_MANIFEST -b $TWRP_BRANCH --depth=1
repo sync || { echo "ERROR: Failed to Sync TWRP Sources!" && exit 1; }
ls

# Clone Trees
git clone $DT_LINK -b $DT_BRANCH $DEVICE_PATH || { echo "ERROR: Failed to Clone the Device Trees!" && exit 1; }

# Exit
exit 0
