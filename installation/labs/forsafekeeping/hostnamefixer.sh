#!/bin/bash

ip=$(ifconfig eth0 | grep 172 | awk -F : '{print $2}' | awk '{print $1}')
hostname=$(nslookup $ip | awk -F = '{print $2}' | cut -d . -f1-3 | strings)
sed "s/HOSTNAME\=localhost.localdomain/HOSTNAME\=`echo $hostname`/" /etc/sysconfig/network
hostname `echo ${a}`
