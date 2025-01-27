#!/bin/bash -ex

echo "0 5 * * * root /usr/sbin/reboot" >> /etc/crontab
systemctl enable enable_overlayfs

systemctl disable apt-daily-upgrade.timer
systemctl disable apt-daily.timer
systemctl disable dpkg-db-backup.timer
systemctl disable e2scrub_all.timer
systemctl disable fstrim.timer
systemctl disable logrotate.timer
systemctl disable man-db.timer
