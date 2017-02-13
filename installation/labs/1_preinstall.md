## 1_preinstall
## System Configuration Checks

---
1. Check `vm.swappiness` on all your nodes:
    * Set the value to `1` if necessary 
    * 
	echo "vm.swappiness=1" >> /etc/sysctl.conf ; init 6 (or reboot)
---

2. Show the mount attributes of all volumes:
	 mount -a 
	 /dev/xvde on / type ext4 (rw)
     proc on /proc type proc (rw)
     sysfs on /sys type sysfs (rw)
     devpts on /dev/pts type devpts (rw,gid=5,mode=620)
     tmpfs on /dev/shm type tmpfs (rw)
     none on /proc/sys/fs/binfmt_misc type binfmt_misc (rw)
     /dev/xvdf on /mnt/data1 type ext4 (rw,noatime)
     /dev/xvdg on /mnt/data2 type ext4 (rw,noatime)
     cm_processes on /var/run/cloudera-scm-agent/process type tmpfs (rw,mode=0751)
Generating pre-built zip archives for distribution:

---

3. Show the reserve space of any non-root, `ext`-based volumes:

	 [root@sebnnr1n1 cloudera]# tune2fs -l /dev/xvde | grep Reserved
	  Reserved block count:     327625
	  Reserved GDT blocks:      510
	  Reserved blocks uid:      0 (user root)
	  Reserved blocks gid:      0 (group root)
	  [root@sebnnr1n1 cloudera]# tune2fs -l /dev/xvdf | grep Reserved
	  Reserved block count:     0
	  Reserved GDT blocks:      959
	  Reserved blocks uid:      0 (user root)
	  Reserved blocks gid:      0 (group root)
	  [root@sebnnr1n1 cloudera]# tune2fs -l /dev/xvdg | grep Reserved
	  Reserved block count:     0
	  Reserved GDT blocks:      959
	  Reserved blocks uid:      0 (user root)
	  Reserved blocks gid:      0 (group root)

---

4. List your network interface configuration:

[root@sebnnr1n1 cloudera]# ifconfig -a
eth0      Link encap:Ethernet  HWaddr 02:56:E7:2A:55:D3
          inet addr:172.31.8.212  Bcast:172.31.15.255  Mask:255.255.240.0
          inet6 addr: fe80::56:e7ff:fe2a:55d3/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:4977210 errors:0 dropped:0 overruns:0 frame:0
          TX packets:3225135 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:6069646994 (5.6 GiB)  TX bytes:11077837118 (10.3 GiB)
          Interrupt:22
++
lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:1180277 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1180277 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:5299252517 (4.9 GiB)  TX bytes:5299252517 (4.9 GiB)


----
5. List forward and reverse host lookups using `getent` or `nslookup` :
	
	[root@sebnnr1n1 cloudera]# nslookup sebnnr1n1
	Server:         172.31.8.212
	Address:        172.31.8.212#53
	
	Name:   sebnnr1n1.sebc.com
	Address: 172.31.8.212
	
	[root@sebnnr1n1 cloudera]# nslookup 172.31.8.212
	Server:         172.31.8.212
	Address:        172.31.8.212#53
	
	212.8.31.172.in-addr.arpa       name = sebnnr1n1.sebc.com.
	
----

6 - 7 . Show the nscd service is running ,show the ntpd service is running:

[root@sebnnr1n1 cloudera]# service nscd status
nscd (pid 16782) is running...
[root@sebnnr1n1 cloudera]# service ntpd status
ntpd (pid  16815) is running...


----