-------
####Teragen Generate a 500 Mb Fil(s)
```
[root@sebnnr1n1 ~]# sudo su - mglaserna -c "time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=4   5800000 /user/mglaserna/distcpfile"
17/02/14 16:56:27 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 16:56:27 INFO terasort.TeraSort: Generating 5800000 using 4
17/02/14 16:56:27 INFO mapreduce.JobSubmitter: number of splits:4
17/02/14 16:56:28 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487058046833_0009
17/02/14 16:56:28 INFO impl.YarnClientImpl: Submitted application application_1487058046833_0009
17/02/14 16:56:28 INFO mapreduce.Job: The url to track the job: http://sebnnr1n1.sebc.com:8088/proxy/application_1487058046833_0009/
17/02/14 16:56:28 INFO mapreduce.Job: Running job: job_1487058046833_0009
17/02/14 16:56:34 INFO mapreduce.Job: Job job_1487058046833_0009 running in uber mode : false
17/02/14 16:56:34 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 16:56:43 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 16:56:43 INFO mapreduce.Job: Job job_1487058046833_0009 completed successfully
17/02/14 16:56:43 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=487372
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=337
                HDFS: Number of bytes written=580000000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=53222
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=26611
                Total vcore-seconds taken by all map tasks=106444
                Total megabyte-seconds taken by all map tasks=163497984
        Map-Reduce Framework
                Map input records=5800000
                Map output records=5800000
                Input split bytes=337
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=424
                CPU time spent (ms)=20870
                Physical memory (bytes) snapshot=1413398528
                Virtual memory (bytes) snapshot=23906074624
                Total committed heap usage (bytes)=1692401664
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=12454733980234881
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=580000000

real    0m19.582s
user    0m5.776s
sys     0m0.698s

```
-------
### Distcp From screenthong 

```
[root@sebnnr1n1 ~]# sudo su - hdfs -c "hadoop distcp webhdfs://54.169.153.116/tmp/screenthong /user/mglaserna/sourcedistcp/"
17/02/14 16:52:44 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[webhdfs://54.169.153.116/tmp/screenthong], targetPath=/user/mglaserna/sourcedistcp, targetPathExists=true, filtersFile='null'}
17/02/14 16:52:44 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 16:52:45 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 14; dirCnt = 5
17/02/14 16:52:45 INFO tools.SimpleCopyListing: Build file listing completed.
17/02/14 16:52:45 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
17/02/14 16:52:45 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
17/02/14 16:52:45 INFO tools.DistCp: Number of paths in the copy list: 14
17/02/14 16:52:46 INFO tools.DistCp: Number of paths in the copy list: 14
17/02/14 16:52:46 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 16:52:46 INFO mapreduce.JobSubmitter: number of splits:9
17/02/14 16:52:46 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487058046833_0008
17/02/14 16:52:46 INFO impl.YarnClientImpl: Submitted application application_1487058046833_0008
17/02/14 16:52:46 INFO mapreduce.Job: The url to track the job: http://sebnnr1n1.sebc.com:8088/proxy/application_1487058046833_0008/
17/02/14 16:52:46 INFO tools.DistCp: DistCp job-id: job_1487058046833_0008
17/02/14 16:52:46 INFO mapreduce.Job: Running job: job_1487058046833_0008
17/02/14 16:52:52 INFO mapreduce.Job: Job job_1487058046833_0008 running in uber mode : false
17/02/14 16:52:52 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 16:53:01 INFO mapreduce.Job:  map 22% reduce 0%
17/02/14 16:53:03 INFO mapreduce.Job:  map 33% reduce 0%
17/02/14 16:53:05 INFO mapreduce.Job:  map 44% reduce 0%
17/02/14 16:53:06 INFO mapreduce.Job:  map 78% reduce 0%
17/02/14 16:53:08 INFO mapreduce.Job:  map 89% reduce 0%
17/02/14 16:53:12 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 16:53:21 INFO mapreduce.Job: Job job_1487058046833_0008 completed successfully
17/02/14 16:53:21 INFO mapreduce.Job: Counters: 38
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=1122030
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=5998
                HDFS: Number of bytes written=2387120000
                HDFS: Number of read operations=137
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=41
                WEBHDFS: Number of bytes read=2387120000
                WEBHDFS: Number of bytes written=0
                WEBHDFS: Number of read operations=38
                WEBHDFS: Number of large read operations=0
                WEBHDFS: Number of write operations=0
        Job Counters
                Launched map tasks=9
                Other local map tasks=9
                Total time spent by all maps in occupied slots (ms)=121995
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=121995
                Total vcore-seconds taken by all map tasks=487980
                Total megabyte-seconds taken by all map tasks=374768640
        Map-Reduce Framework
                Map input records=14
                Map output records=0
                Input split bytes=1044
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=872
                CPU time spent (ms)=64400
                Physical memory (bytes) snapshot=2523754496
                Virtual memory (bytes) snapshot=14118449152
                Total committed heap usage (bytes)=2990538752
        File Input Format Counters
                Bytes Read=4954
        File Output Format Counters
                Bytes Written=0
        org.apache.hadoop.tools.mapred.CopyMapper$Counter
                BYTESCOPIED=2387120000
                BYTESEXPECTED=2387120000
                COPY=14
```
-------

### BDR Screenshot

-------
####Teragen Generate a 500 Mb Fil(s)
```
[root@sebnnr1n1 ~]# sudo su - mglaserna -c "time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=4   5800000 /user/mglaserna/distcpfile"
17/02/14 16:56:27 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 16:56:27 INFO terasort.TeraSort: Generating 5800000 using 4
17/02/14 16:56:27 INFO mapreduce.JobSubmitter: number of splits:4
17/02/14 16:56:28 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487058046833_0009
17/02/14 16:56:28 INFO impl.YarnClientImpl: Submitted application application_1487058046833_0009
17/02/14 16:56:28 INFO mapreduce.Job: The url to track the job: http://sebnnr1n1.sebc.com:8088/proxy/application_1487058046833_0009/
17/02/14 16:56:28 INFO mapreduce.Job: Running job: job_1487058046833_0009
17/02/14 16:56:34 INFO mapreduce.Job: Job job_1487058046833_0009 running in uber mode : false
17/02/14 16:56:34 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 16:56:43 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 16:56:43 INFO mapreduce.Job: Job job_1487058046833_0009 completed successfully
17/02/14 16:56:43 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=487372
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=337
                HDFS: Number of bytes written=580000000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=53222
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=26611
                Total vcore-seconds taken by all map tasks=106444
                Total megabyte-seconds taken by all map tasks=163497984
        Map-Reduce Framework
                Map input records=5800000
                Map output records=5800000
                Input split bytes=337
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=424
                CPU time spent (ms)=20870
                Physical memory (bytes) snapshot=1413398528
                Virtual memory (bytes) snapshot=23906074624
                Total committed heap usage (bytes)=1692401664
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=12454733980234881
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=580000000

real    0m19.582s
user    0m5.776s
sys     0m0.698s

```
-------
### Distcp From screenthong 

```
[root@sebnnr1n1 ~]# sudo su - hdfs -c "hadoop distcp webhdfs://54.169.153.116/tmp/screenthong /user/mglaserna/sourcedistcp/"
17/02/14 16:52:44 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[webhdfs://54.169.153.116/tmp/screenthong], targetPath=/user/mglaserna/sourcedistcp, targetPathExists=true, filtersFile='null'}
17/02/14 16:52:44 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 16:52:45 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 14; dirCnt = 5
17/02/14 16:52:45 INFO tools.SimpleCopyListing: Build file listing completed.
17/02/14 16:52:45 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
17/02/14 16:52:45 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
17/02/14 16:52:45 INFO tools.DistCp: Number of paths in the copy list: 14
17/02/14 16:52:46 INFO tools.DistCp: Number of paths in the copy list: 14
17/02/14 16:52:46 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 16:52:46 INFO mapreduce.JobSubmitter: number of splits:9
17/02/14 16:52:46 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487058046833_0008
17/02/14 16:52:46 INFO impl.YarnClientImpl: Submitted application application_1487058046833_0008
17/02/14 16:52:46 INFO mapreduce.Job: The url to track the job: http://sebnnr1n1.sebc.com:8088/proxy/application_1487058046833_0008/
17/02/14 16:52:46 INFO tools.DistCp: DistCp job-id: job_1487058046833_0008
17/02/14 16:52:46 INFO mapreduce.Job: Running job: job_1487058046833_0008
17/02/14 16:52:52 INFO mapreduce.Job: Job job_1487058046833_0008 running in uber mode : false
17/02/14 16:52:52 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 16:53:01 INFO mapreduce.Job:  map 22% reduce 0%
17/02/14 16:53:03 INFO mapreduce.Job:  map 33% reduce 0%
17/02/14 16:53:05 INFO mapreduce.Job:  map 44% reduce 0%
17/02/14 16:53:06 INFO mapreduce.Job:  map 78% reduce 0%
17/02/14 16:53:08 INFO mapreduce.Job:  map 89% reduce 0%
17/02/14 16:53:12 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 16:53:21 INFO mapreduce.Job: Job job_1487058046833_0008 completed successfully
17/02/14 16:53:21 INFO mapreduce.Job: Counters: 38
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=1122030
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=5998
                HDFS: Number of bytes written=2387120000
                HDFS: Number of read operations=137
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=41
                WEBHDFS: Number of bytes read=2387120000
                WEBHDFS: Number of bytes written=0
                WEBHDFS: Number of read operations=38
                WEBHDFS: Number of large read operations=0
                WEBHDFS: Number of write operations=0
        Job Counters
                Launched map tasks=9
                Other local map tasks=9
                Total time spent by all maps in occupied slots (ms)=121995
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=121995
                Total vcore-seconds taken by all map tasks=487980
                Total megabyte-seconds taken by all map tasks=374768640
        Map-Reduce Framework
                Map input records=14
                Map output records=0
                Input split bytes=1044
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=872
                CPU time spent (ms)=64400
                Physical memory (bytes) snapshot=2523754496
                Virtual memory (bytes) snapshot=14118449152
                Total committed heap usage (bytes)=2990538752
        File Input Format Counters
                Bytes Read=4954
        File Output Format Counters
                Bytes Written=0
        org.apache.hadoop.tools.mapred.CopyMapper$Counter
                BYTESCOPIED=2387120000
                BYTESEXPECTED=2387120000
                COPY=14
```
-------

### BDR Screenshot

![Image of Yaktocat](https://github.com/mglaserna/SEBC/blob/master/storage/labs/sucess.png)

----


### FSCK 
- My Source

```


```
- My Target

```
[root@sebnnr1n1 ~]# hadoop fsck  /user/mglaserna/sourcedistcp/screenthong/source -files -blocks
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://sebnnr1n1.sebc.com:50070
FSCK started by root (auth:SIMPLE) from /172.31.8.212 for path /user/mglaserna/sourcedistcp/screenthong/source at Tue Feb 14 22:51:21 PHT 2017
/user/mglaserna/sourcedistcp/screenthong/source <dir>
/user/mglaserna/sourcedistcp/screenthong/source/_SUCCESS 0 bytes, 0 block(s):  OK

/user/mglaserna/sourcedistcp/screenthong/source/part-m-00000 524280000 bytes, 4 block(s):  OK
0. BP-1865316537-172.31.8.212-1487005765936:blk_1073757150_16326 len=134217728 Live_repl=3
1. BP-1865316537-172.31.8.212-1487005765936:blk_1073757153_16329 len=134217728 Live_repl=3
2. BP-1865316537-172.31.8.212-1487005765936:blk_1073757159_16335 len=134217728 Live_repl=3
3. BP-1865316537-172.31.8.212-1487005765936:blk_1073757162_16338 len=121626816 Live_repl=3

/user/mglaserna/sourcedistcp/screenthong/source/part-m-00001 524280000 bytes, 4 block(s):  OK
0. BP-1865316537-172.31.8.212-1487005765936:blk_1073757156_16332 len=134217728 Live_repl=3
1. BP-1865316537-172.31.8.212-1487005765936:blk_1073757158_16334 len=134217728 Live_repl=3
2. BP-1865316537-172.31.8.212-1487005765936:blk_1073757160_16336 len=134217728 Live_repl=3
3. BP-1865316537-172.31.8.212-1487005765936:blk_1073757164_16340 len=121626816 Live_repl=3

Status: HEALTHY
 Total size:    1048560000 B
 Total dirs:    1
 Total files:   3
 Total symlinks:                0
 Total blocks (validated):      8 (avg. block size 131070000 B)
 Minimally replicated blocks:   8 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       0 (0.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     3.0
 Corrupt blocks:                0
 Missing replicas:              0 (0.0 %)
 Number of data-nodes:          4
 Number of racks:               2
FSCK ended at Tue Feb 14 22:51:21 PHT 2017 in 2 milliseconds


The filesystem under path '/user/mglaserna/sourcedistcp/screenthong/source' is HEALTHY

```


------
