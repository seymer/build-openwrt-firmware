#!/bin/bash

cd openwrt

cat >.config <<-EOF
## target
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_d-team_newifi-d2=y

## app
CONFIG_PACKAGE_luci-app-acme=y
CONFIG_PACKAGE_luci-app-omcproxy=y
CONFIG_PACKAGE_luci-app-sqm=y
CONFIG_PACKAGE_acme-dnsapi=y

## USB Storage
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y

## USB utils
CONFIG_PACKAGE_usbutils=y

## File System
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fs-ntfs=y

## Language
CONFIG_PACKAGE_kmod-nls-cp936=y

EOF

cd ..
