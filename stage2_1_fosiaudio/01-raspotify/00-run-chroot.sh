#!/bin/bash -e

sudo apt-get purge -y raspotify ||true
sudo curl -sL https://dtcooper.github.io/raspotify/install.sh | sh
sudo cp "/etc/raspotify/conf" "/etc/raspotify/conf_default"
