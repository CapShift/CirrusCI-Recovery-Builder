# Use Cirrus CI to compile Recovery

- Support ~~OFRP~~, SHRP, TWRP compilation and production

# Must Set github token secret 
Name*: GH_TOKEN
Secret*: Your Github Token (with push permissions)

# Must Setup Cirrus-CI from github marketplace

---
- Based On Action Recovery Builder

## Thanks to
- [azwhikaru](https://github.com/azwhikaru)

## Parameter Description

| Name | Description | Example |
| ------------ | -------------------- | ------------ |
| `MANIFEST_URL` | Source address | https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git |
| `MANIFEST_BRANCH` | Source branch | twrp-12.1 |
| `DEVICE_TREE_URL` | Device address | https://github.com/ShazuxD/device_xiaomi_fleur-twrp |
| `DEVICE_TREE_BRANCH` | Device branch | twrp-12.1 |
| `DEVICE_PATH` | Device location | device/xiaomi/fleur |
| `COMMON_TREE_URL` | Common tree address | https://github.com/TeamWin/android_device_asus_sm8250-common |
| `COMMON_PATH` | Common tree location | device/asus/sm8250-common |
| `DEVICE_NAME` | Model name | fleur |
| `MAKEFILE_NAME` | Makefile name | twrp_fleur |
| `BUILD_TARGET` | Build Target Partition (boot/recovery/vendorboot) | recovery |
-----

## Compilation results
Download Link Can Be Found on Cirrus-ci.com in upload_script logs

-----
## Remark

#### TeamWin Recovery Project: https://github.com/minimal-manifest-twrp
#### OrangeFox Recovery Project: https://gitlab.com/OrangeFox/Manifest
#### SKYHAWK Recovery Project: https://github.com/SHRP/platform_manifest_twrp_omni
