```
 time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=6 -Ddfs.blocksize=33554432  51200000 /user/raffles/tgen512m

real    1m24.484s
user    0m5.812s
sys     0m0.668s

[raffles@chalnnr1n1 ~]$ hadoop fs -ls /user/raffles/tgen512m
Found 7 items
-rw-r--r--   3 raffles raffles          0 2017-02-17 06:47 /user/raffles/tgen512m/_SUCCESS
-rw-r--r--   3 raffles raffles  853333400 2017-02-17 06:46 /user/raffles/tgen512m/part-m-00000
-rw-r--r--   3 raffles raffles  853333300 2017-02-17 06:46 /user/raffles/tgen512m/part-m-00001
-rw-r--r--   3 raffles raffles  853333300 2017-02-17 06:46 /user/raffles/tgen512m/part-m-00002
-rw-r--r--   3 raffles raffles  853333400 2017-02-17 06:47 /user/raffles/tgen512m/part-m-00003
-rw-r--r--   3 raffles raffles  853333300 2017-02-17 06:47 /user/raffles/tgen512m/part-m-00004
-rw-r--r--   3 raffles raffles  853333300 2017-02-17 06:47 /user/raffles/tgen512m/part-m-00005
[raffles@chalnnr1n1 ~]$

```