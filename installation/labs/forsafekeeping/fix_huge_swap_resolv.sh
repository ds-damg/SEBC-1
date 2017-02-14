#!/bin/bash
#One time run only
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
echo "transparent_hugepage=never" >> /boot/grub/grub.conf
echo "vm.swappiness=1" >> /etc/sysctl.conf
cp /etc/resolv.conf /var/
echo "cp /var/resolv.conf /etc" >> /etc/rc.local
echo "sh -x /root/hostnamefixer.sh" >> /etc/rc.local


service iptables stop
service ntpd start
service nscd start
chkconfig ntpd off
chkconfig nscd off
chkconfig iptables off

