#!/bin/bash -ex

install -m 755 files/enable_overlayfs	"${ROOTFS_DIR}/etc/init.d/"
echo "SystemMaxUse=20M"                 "${ROOTFS_DIR}/etc/systemd/journald.conf"
echo "SystemKeepFree=20M"               "${ROOTFS_DIR}/etc/systemd/journald.conf"