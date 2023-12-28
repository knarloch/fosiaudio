#!/bin/bash -e

echo "dtoverlay=hifiberry-dac"     >> "${ROOTFS_DIR}/boot/config.txt"
echo "gpu_mem=16"                  >> "${ROOTFS_DIR}/boot/config.txt"
