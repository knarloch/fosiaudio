#!/bin/bash -e

echo "dtoverlay=hifiberry-dac"     >> "${ROOTFS_DIR}/boot/firmware/config.txt"

install -m 755 files/asound.conf	    "${ROOTFS_DIR}/etc/"
install -m 755 files/do_speaker_test	"${ROOTFS_DIR}/etc/init.d/"
