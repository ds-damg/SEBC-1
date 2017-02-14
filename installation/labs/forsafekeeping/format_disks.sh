#!/bin/bash
#Run only once
mkfs.ext4 -m 0 /dev/xvdg
mkfs.ext4 -m 0 /dev/xvdf
tune2fs -m 0 /dev/xvdf
tune2fs -m 0 /dev/xvdg
mkdir /mnt/data1
mkdir /mnt/data2
echo "/dev/xvdf                /mnt/data1             ext4    defaults,noatime        1 2" >> /etc/fstab
echo "/dev/xvdg                /mnt/data2              ext4    defaults,noatime        1 2" >> /etc/fstab
mount -a