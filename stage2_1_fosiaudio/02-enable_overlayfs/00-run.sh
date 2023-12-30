#!/bin/bash -ex

install -m 755 files/enable_overlayfs	"${ROOTFS_DIR}/etc/init.d/"
