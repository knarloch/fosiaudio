#!/bin/bash -e

sed -i "s#/boot/firmware  vfat    defaults #/boot/firmware  vfat    defaults,ro #"  /etc/fstab
sed -i "s#/               ext4    defaults,noatime #/               ext4    defaults,noatime,ro #"  /etc/fstab
 
echo "tmpfs           /tmp            tmpfs   nosuid,nodev         0       0" >> /etc/fstab
echo "tmpfs           /var/log        tmpfs   nosuid,nodev         0       0" >> /etc/fstab
echo "tmpfs           /var/tmp        tmpfs   nosuid,nodev         0       0" >> /etc/fstab
