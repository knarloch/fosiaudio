#!/bin/bash -ex

echo "0 4 * * * /usr/sbin/reboot" >> /var/spool/cron/crontabs/root
systemctl enable enable_overlayfs
