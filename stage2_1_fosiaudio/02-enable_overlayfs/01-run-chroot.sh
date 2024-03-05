#!/bin/bash -ex

echo "0 5 * * * /usr/sbin/reboot" > /var/spool/cron/crontabs/root
systemctl enable enable_overlayfs

systemctl disable apt-daily-upgrade.timer
systemctl disable apt-daily.timer
systemctl disabledpkg-db-backup.timer
systemctl disablee2scrub_all.timer
systemctl disablefstrim.timer
systemctl disablelogrotate.timer
systemctl disableman-db.timer
