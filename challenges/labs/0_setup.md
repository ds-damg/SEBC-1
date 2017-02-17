```
| Hostname           | Private Ip   | Public Ip    | Roles                                                                                                                                                                                                                                                                                         |
|--------------------|--------------|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| sebnnr1n1.sebc.com | 52.221.23.84 | 52.77.66.194 | Primary Dns, Web Repository, Cloudera Manager,HDFS NameNode Cloudera Management Service Activity Monitor Cloudera Management Service Host Monitor Cloudera Management Service Service Monitor Oozie Server YARN (MR2 Included) ResourceManager ZooKeeper Server                               |
| sebnnr2n2.sebc.com | 52.76.156.92 | 52.77.66.194 | HDFS HttpFSHDFS SecondaryNameNodeHive GatewayHive Metastore ServerHiveServer2Hive WebHCat ServerHue ServerCloudera Management Service Alert PublisherCloudera Management Service Event ServerCloudera Management Service Reports ManagerYARN (MR2 Included) JobHistory ServerZooKeeper Server |
| sebdnr1n1.sebc.com | 52.77.66.194 | 52.77.66.194 | HDFS Balancer HDFS DataNode YARN (MR2 Included) NodeManager ZooKeeper Server                                                                                                                                                                                                                  |
| sebdnr2n2.sebc.com | 52.221.80.80 | 52.221.80.80 | HDFS DataNode YARN (MR2 Included) NodeManager                                                                                                                                                                                                                                                 |
| sebdnr3n3.sebc.com | 52.221.3.19  | 52.77.66.194 | HDFS DataNode YARN (MR2 Included) NodeManager                                                                                                                                                                                                                                                 |
```
------
```
[root@chalnnr1n1 ~]# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
uucp:x:10:14:uucp:/var/spool/uucp:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
gopher:x:13:30:gopher:/var/gopher:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:99:99:Nobody:/:/sbin/nologin
vcsa:x:69:69:virtual console memory owner:/dev:/sbin/nologin
saslauth:x:499:76:"Saslauthd user":/var/empty/saslauth:/sbin/nologin
postfix:x:89:89::/var/spool/postfix:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
named:x:25:25:Named:/var/named:/sbin/nologin
ntp:x:38:38::/etc/ntp:/sbin/nologin
nscd:x:28:28:NSCD Daemon:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
raffles:x:2000:3002::/home/raffles:/bin/bash
fullerton:x:3000:3001::/home/fullerton:/bin/bash


[root@chalnnr1n1 ~]# cat /etc/group
root:x:0:
bin:x:1:bin,daemon
daemon:x:2:bin,daemon
sys:x:3:bin,adm
adm:x:4:adm,daemon
tty:x:5:
disk:x:6:
lp:x:7:daemon
mem:x:8:
kmem:x:9:
wheel:x:10:
mail:x:12:mail,postfix
uucp:x:14:
man:x:15:
games:x:20:
gopher:x:30:
video:x:39:
dip:x:40:
ftp:x:50:
lock:x:54:
audio:x:63:
nobody:x:99:
users:x:100:
floppy:x:19:
vcsa:x:69:
utmp:x:22:
utempter:x:35:
cdrom:x:11:
tape:x:33:
dialout:x:18:
saslauth:x:76:
postdrop:x:90:
postfix:x:89:
sshd:x:74:
named:x:25:
ntp:x:38:
nscd:x:28:
dbus:x:81:
raffles:x:2000:
fullerton:x:3000:
hotels:x:3001:fullerton
shops:x:3002:raffles
