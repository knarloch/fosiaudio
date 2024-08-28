#!/bin/bash -ex

[[ -d fosiaudio_chilli ]]  || git clone https://github.com/knarloch/fosiaudio_chilli.git
pushd fosiaudio_chilli
git pull
./install_deps.sh
source $HOME/.cargo/env
./build.sh
popd

install -m 755 fosiaudio_chilli/target/aarch64-unknown-linux-gnu/release/fosiaudio_chilli	"${ROOTFS_DIR}/usr/bin/"

install -m 755 fosiaudio_chilli/etc/systemd/system/fosiaudio_chilli.service         "${ROOTFS_DIR}/etc/systemd/system/"
install -m 755 fosiaudio_chilli/etc/systemd/system/set_volume_at_startup.service    "${ROOTFS_DIR}/etc/systemd/system/"
