-------
Time tookup
- Teragen  real    2m0.773s
- TeraSort real    11m40.935s

-------
####Teragen Generate a 10 GiB File(s)

```
[root@sebnnr1n1 ~]# sudo su - mglaserna -c "time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=4 -Ddfs.blocksize=33554432  108000000 /user/mglaserna/teragenfile"
17/02/14 16:23:59 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 16:23:59 INFO terasort.TeraSort: Generating 108000000 using 4
17/02/14 16:23:59 INFO mapreduce.JobSubmitter: number of splits:4
17/02/14 16:24:00 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487058046833_0004
17/02/14 16:24:00 INFO impl.YarnClientImpl: Submitted application application_1487058046833_0004
17/02/14 16:24:00 INFO mapreduce.Job: The url to track the job: http://sebnnr1n1.sebc.com:8088/proxy/application_1487058046833_0004/
17/02/14 16:24:00 INFO mapreduce.Job: Running job: job_1487058046833_0004
17/02/14 16:24:06 INFO mapreduce.Job: Job job_1487058046833_0004 running in uber mode : false
17/02/14 16:24:06 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 16:24:18 INFO mapreduce.Job:  map 12% reduce 0%
17/02/14 16:24:21 INFO mapreduce.Job:  map 18% reduce 0%
17/02/14 16:24:24 INFO mapreduce.Job:  map 21% reduce 0%
17/02/14 16:24:27 INFO mapreduce.Job:  map 24% reduce 0%
17/02/14 16:24:32 INFO mapreduce.Job:  map 26% reduce 0%
17/02/14 16:24:35 INFO mapreduce.Job:  map 29% reduce 0%
17/02/14 16:24:38 INFO mapreduce.Job:  map 32% reduce 0%
17/02/14 16:24:41 INFO mapreduce.Job:  map 35% reduce 0%
17/02/14 16:24:44 INFO mapreduce.Job:  map 38% reduce 0%
17/02/14 16:24:47 INFO mapreduce.Job:  map 41% reduce 0%
17/02/14 16:24:50 INFO mapreduce.Job:  map 44% reduce 0%
17/02/14 16:24:53 INFO mapreduce.Job:  map 47% reduce 0%
17/02/14 16:24:57 INFO mapreduce.Job:  map 49% reduce 0%
17/02/14 16:25:00 INFO mapreduce.Job:  map 52% reduce 0%
17/02/14 16:25:05 INFO mapreduce.Job:  map 54% reduce 0%
17/02/14 16:25:09 INFO mapreduce.Job:  map 58% reduce 0%
17/02/14 16:25:12 INFO mapreduce.Job:  map 61% reduce 0%
17/02/14 16:25:15 INFO mapreduce.Job:  map 65% reduce 0%
17/02/14 16:25:18 INFO mapreduce.Job:  map 68% reduce 0%
17/02/14 16:25:21 INFO mapreduce.Job:  map 70% reduce 0%
17/02/14 16:25:24 INFO mapreduce.Job:  map 73% reduce 0%
17/02/14 16:25:27 INFO mapreduce.Job:  map 76% reduce 0%
17/02/14 16:25:30 INFO mapreduce.Job:  map 79% reduce 0%
17/02/14 16:25:33 INFO mapreduce.Job:  map 81% reduce 0%
17/02/14 16:25:36 INFO mapreduce.Job:  map 84% reduce 0%
17/02/14 16:25:39 INFO mapreduce.Job:  map 87% reduce 0%
17/02/14 16:25:42 INFO mapreduce.Job:  map 90% reduce 0%
17/02/14 16:25:45 INFO mapreduce.Job:  map 92% reduce 0%
17/02/14 16:25:46 INFO mapreduce.Job:  map 93% reduce 0%
17/02/14 16:25:47 INFO mapreduce.Job:  map 95% reduce 0%
17/02/14 16:25:50 INFO mapreduce.Job:  map 97% reduce 0%
17/02/14 16:25:53 INFO mapreduce.Job:  map 99% reduce 0%
17/02/14 16:25:56 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 16:25:56 INFO mapreduce.Job: Job job_1487058046833_0004 completed successfully
17/02/14 16:25:56 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=487396
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=344
                HDFS: Number of bytes written=10800000000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=822646
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=411323
                Total vcore-seconds taken by all map tasks=1645292
                Total megabyte-seconds taken by all map tasks=2527168512
        Map-Reduce Framework
                Map input records=108000000
                Map output records=108000000
                Input split bytes=344
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=686
                CPU time spent (ms)=170210
                Physical memory (bytes) snapshot=3650453504
                Virtual memory (bytes) snapshot=23901192192
                Total committed heap usage (bytes)=2401763328
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=231937366418278424
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=10800000000

real    2m0.773s
user    0m5.994s
sys     0m0.729s
```

------

### Terasort Command

```
[root@sebnnr1n1 ~]# sudo su - mglaserna -c "time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=4 /user/mglaserna/teragenfile /user/mglaserna/terasortfile"
17/02/14 23:07:25 INFO terasort.TeraSort: starting
17/02/14 23:07:27 INFO input.FileInputFormat: Total input paths to process : 4
Spent 253ms computing base-splits.
Spent 6ms computing TeraScheduler splits.
Computing input splits took 260ms
Sampling 10 splits of 324
Making 6 from 100000 sampled records
Computing parititions took 919ms
Spent 1181ms computing partitions.
17/02/14 23:07:28 INFO client.RMProxy: Connecting to ResourceManager at sebnnr1n1.sebc.com/172.31.8.212:8032
17/02/14 23:07:29 INFO mapreduce.JobSubmitter: number of splits:324
17/02/14 23:07:29 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487082597725_0003
17/02/14 23:07:29 INFO impl.YarnClientImpl: Submitted application application_1487082597725_0003
17/02/14 23:07:29 INFO mapreduce.Job: The url to track the job: http://sebnnr1n1.sebc.com:8088/proxy/application_1487082597725_0003/
17/02/14 23:07:29 INFO mapreduce.Job: Running job: job_1487082597725_0003
17/02/14 23:07:35 INFO mapreduce.Job: Job job_1487082597725_0003 running in uber mode : false
17/02/14 23:07:35 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 23:07:43 INFO mapreduce.Job:  map 1% reduce 0%
17/02/14 23:07:49 INFO mapreduce.Job:  map 2% reduce 0%
17/02/14 23:07:55 INFO mapreduce.Job:  map 3% reduce 0%
17/02/14 23:07:56 INFO mapreduce.Job:  map 4% reduce 0%
17/02/14 23:08:02 INFO mapreduce.Job:  map 5% reduce 0%
17/02/14 23:08:08 INFO mapreduce.Job:  map 6% reduce 0%
17/02/14 23:08:14 INFO mapreduce.Job:  map 7% reduce 0%
17/02/14 23:08:19 INFO mapreduce.Job:  map 8% reduce 0%
17/02/14 23:08:21 INFO mapreduce.Job:  map 9% reduce 0%
17/02/14 23:08:26 INFO mapreduce.Job:  map 10% reduce 0%
17/02/14 23:08:33 INFO mapreduce.Job:  map 11% reduce 0%
17/02/14 23:08:38 INFO mapreduce.Job:  map 12% reduce 0%
17/02/14 23:08:44 INFO mapreduce.Job:  map 13% reduce 0%
17/02/14 23:08:45 INFO mapreduce.Job:  map 14% reduce 0%
17/02/14 23:08:51 INFO mapreduce.Job:  map 15% reduce 0%
17/02/14 23:08:57 INFO mapreduce.Job:  map 16% reduce 0%
17/02/14 23:09:02 INFO mapreduce.Job:  map 17% reduce 0%
17/02/14 23:09:08 INFO mapreduce.Job:  map 18% reduce 0%
17/02/14 23:09:10 INFO mapreduce.Job:  map 19% reduce 0%
17/02/14 23:09:16 INFO mapreduce.Job:  map 20% reduce 0%
17/02/14 23:09:22 INFO mapreduce.Job:  map 21% reduce 0%
17/02/14 23:09:26 INFO mapreduce.Job:  map 22% reduce 0%
17/02/14 23:09:32 INFO mapreduce.Job:  map 23% reduce 0%
17/02/14 23:09:38 INFO mapreduce.Job:  map 24% reduce 0%
17/02/14 23:09:40 INFO mapreduce.Job:  map 25% reduce 0%
17/02/14 23:09:46 INFO mapreduce.Job:  map 26% reduce 0%
17/02/14 23:09:52 INFO mapreduce.Job:  map 27% reduce 0%
17/02/14 23:09:58 INFO mapreduce.Job:  map 28% reduce 0%
17/02/14 23:10:02 INFO mapreduce.Job:  map 29% reduce 0%
17/02/14 23:10:05 INFO mapreduce.Job:  map 30% reduce 0%
17/02/14 23:10:10 INFO mapreduce.Job:  map 31% reduce 0%
17/02/14 23:10:16 INFO mapreduce.Job:  map 32% reduce 0%
17/02/14 23:10:22 INFO mapreduce.Job:  map 33% reduce 0%
17/02/14 23:10:26 INFO mapreduce.Job:  map 34% reduce 0%
17/02/14 23:10:29 INFO mapreduce.Job:  map 35% reduce 0%
17/02/14 23:10:35 INFO mapreduce.Job:  map 36% reduce 0%
17/02/14 23:10:41 INFO mapreduce.Job:  map 37% reduce 0%
17/02/14 23:10:47 INFO mapreduce.Job:  map 38% reduce 0%
17/02/14 23:10:52 INFO mapreduce.Job:  map 39% reduce 0%
17/02/14 23:10:55 INFO mapreduce.Job:  map 40% reduce 0%
17/02/14 23:11:01 INFO mapreduce.Job:  map 41% reduce 0%
17/02/14 23:11:06 INFO mapreduce.Job:  map 42% reduce 0%
17/02/14 23:11:12 INFO mapreduce.Job:  map 43% reduce 0%
17/02/14 23:11:16 INFO mapreduce.Job:  map 44% reduce 0%
17/02/14 23:11:22 INFO mapreduce.Job:  map 45% reduce 0%
17/02/14 23:11:25 INFO mapreduce.Job:  map 46% reduce 0%
17/02/14 23:11:31 INFO mapreduce.Job:  map 47% reduce 0%
17/02/14 23:11:36 INFO mapreduce.Job:  map 48% reduce 0%
17/02/14 23:11:42 INFO mapreduce.Job:  map 49% reduce 0%
17/02/14 23:11:46 INFO mapreduce.Job:  map 50% reduce 0%
17/02/14 23:11:50 INFO mapreduce.Job:  map 51% reduce 0%
17/02/14 23:11:55 INFO mapreduce.Job:  map 52% reduce 0%
17/02/14 23:12:01 INFO mapreduce.Job:  map 53% reduce 0%
17/02/14 23:12:06 INFO mapreduce.Job:  map 54% reduce 0%
17/02/14 23:12:10 INFO mapreduce.Job:  map 55% reduce 0%
17/02/14 23:12:16 INFO mapreduce.Job:  map 56% reduce 0%
17/02/14 23:12:22 INFO mapreduce.Job:  map 57% reduce 0%
17/02/14 23:12:26 INFO mapreduce.Job:  map 58% reduce 0%
17/02/14 23:12:30 INFO mapreduce.Job:  map 59% reduce 0%
17/02/14 23:12:35 INFO mapreduce.Job:  map 60% reduce 0%
17/02/14 23:12:41 INFO mapreduce.Job:  map 61% reduce 0%
17/02/14 23:12:46 INFO mapreduce.Job:  map 62% reduce 0%
17/02/14 23:12:50 INFO mapreduce.Job:  map 63% reduce 0%
17/02/14 23:12:54 INFO mapreduce.Job:  map 64% reduce 0%
17/02/14 23:13:00 INFO mapreduce.Job:  map 65% reduce 0%
17/02/14 23:13:06 INFO mapreduce.Job:  map 66% reduce 0%
17/02/14 23:13:10 INFO mapreduce.Job:  map 67% reduce 0%
17/02/14 23:13:14 INFO mapreduce.Job:  map 68% reduce 0%
17/02/14 23:13:20 INFO mapreduce.Job:  map 69% reduce 0%
17/02/14 23:13:26 INFO mapreduce.Job:  map 70% reduce 0%
17/02/14 23:13:31 INFO mapreduce.Job:  map 71% reduce 0%
17/02/14 23:13:34 INFO mapreduce.Job:  map 72% reduce 0%
17/02/14 23:13:40 INFO mapreduce.Job:  map 73% reduce 0%
17/02/14 23:13:46 INFO mapreduce.Job:  map 74% reduce 0%
17/02/14 23:13:50 INFO mapreduce.Job:  map 75% reduce 0%
17/02/14 23:13:55 INFO mapreduce.Job:  map 76% reduce 0%
17/02/14 23:13:59 INFO mapreduce.Job:  map 77% reduce 0%
17/02/14 23:14:05 INFO mapreduce.Job:  map 78% reduce 0%
17/02/14 23:14:11 INFO mapreduce.Job:  map 79% reduce 0%
17/02/14 23:14:16 INFO mapreduce.Job:  map 80% reduce 0%
17/02/14 23:14:20 INFO mapreduce.Job:  map 81% reduce 0%
17/02/14 23:14:27 INFO mapreduce.Job:  map 82% reduce 0%
17/02/14 23:14:34 INFO mapreduce.Job:  map 83% reduce 0%
17/02/14 23:14:38 INFO mapreduce.Job:  map 83% reduce 9%
17/02/14 23:14:41 INFO mapreduce.Job:  map 84% reduce 9%
17/02/14 23:14:53 INFO mapreduce.Job:  map 85% reduce 9%
17/02/14 23:15:06 INFO mapreduce.Job:  map 86% reduce 9%
17/02/14 23:15:08 INFO mapreduce.Job:  map 86% reduce 10%
17/02/14 23:15:12 INFO mapreduce.Job:  map 87% reduce 10%
        17/02/14 23:15:24 INFO mapreduce.Job:  map 88% reduce 10%
17/02/14 23:15:31 INFO mapreduce.Job:  map 89% reduce 10%
17/02/14 23:15:42 INFO mapreduce.Job:  map 90% reduce 10%
17/02/14 23:15:54 INFO mapreduce.Job:  map 91% reduce 10%
17/02/14 23:16:01 INFO mapreduce.Job:  map 92% reduce 10%
17/02/14 23:16:12 INFO mapreduce.Job:  map 93% reduce 10%
17/02/14 23:16:20 INFO mapreduce.Job:  map 94% reduce 10%
17/02/14 23:16:31 INFO mapreduce.Job:  map 95% reduce 10%
17/02/14 23:16:32 INFO mapreduce.Job:  map 95% reduce 11%
17/02/14 23:16:41 INFO mapreduce.Job:  map 96% reduce 11%
17/02/14 23:16:50 INFO mapreduce.Job:  map 97% reduce 11%
17/02/14 23:16:59 INFO mapreduce.Job:  map 98% reduce 11%
17/02/14 23:17:11 INFO mapreduce.Job:  map 99% reduce 11%
17/02/14 23:17:19 INFO mapreduce.Job:  map 100% reduce 11%
17/02/14 23:17:26 INFO mapreduce.Job:  map 100% reduce 13%
17/02/14 23:17:29 INFO mapreduce.Job:  map 100% reduce 14%
17/02/14 23:17:32 INFO mapreduce.Job:  map 100% reduce 16%
17/02/14 23:17:33 INFO mapreduce.Job:  map 100% reduce 22%
17/02/14 23:17:35 INFO mapreduce.Job:  map 100% reduce 24%
17/02/14 23:17:38 INFO mapreduce.Job:  map 100% reduce 26%
17/02/14 23:17:39 INFO mapreduce.Job:  map 100% reduce 27%
17/02/14 23:17:42 INFO mapreduce.Job:  map 100% reduce 28%
17/02/14 23:17:43 INFO mapreduce.Job:  map 100% reduce 29%
17/02/14 23:17:45 INFO mapreduce.Job:  map 100% reduce 30%
17/02/14 23:17:46 INFO mapreduce.Job:  map 100% reduce 32%
17/02/14 23:17:49 INFO mapreduce.Job:  map 100% reduce 33%
17/02/14 23:17:50 INFO mapreduce.Job:  map 100% reduce 34%
17/02/14 23:17:51 INFO mapreduce.Job:  map 100% reduce 35%
17/02/14 23:17:52 INFO mapreduce.Job:  map 100% reduce 36%
17/02/14 23:17:54 INFO mapreduce.Job:  map 100% reduce 37%
17/02/14 23:17:55 INFO mapreduce.Job:  map 100% reduce 38%
17/02/14 23:17:56 INFO mapreduce.Job:  map 100% reduce 39%
17/02/14 23:17:58 INFO mapreduce.Job:  map 100% reduce 40%
17/02/14 23:17:59 INFO mapreduce.Job:  map 100% reduce 41%
17/02/14 23:18:00 INFO mapreduce.Job:  map 100% reduce 42%
17/02/14 23:18:01 INFO mapreduce.Job:  map 100% reduce 43%
17/02/14 23:18:02 INFO mapreduce.Job:  map 100% reduce 44%
17/02/14 23:18:03 INFO mapreduce.Job:  map 100% reduce 45%
17/02/14 23:18:05 INFO mapreduce.Job:  map 100% reduce 46%
17/02/14 23:18:06 INFO mapreduce.Job:  map 100% reduce 47%
17/02/14 23:18:08 INFO mapreduce.Job:  map 100% reduce 48%
17/02/14 23:18:11 INFO mapreduce.Job:  map 100% reduce 49%
17/02/14 23:18:14 INFO mapreduce.Job:  map 100% reduce 50%
17/02/14 23:18:16 INFO mapreduce.Job:  map 100% reduce 60%
17/02/14 23:18:19 INFO mapreduce.Job:  map 100% reduce 62%
17/02/14 23:18:22 INFO mapreduce.Job:  map 100% reduce 64%
17/02/14 23:18:25 INFO mapreduce.Job:  map 100% reduce 65%
17/02/14 23:18:26 INFO mapreduce.Job:  map 100% reduce 71%
17/02/14 23:18:28 INFO mapreduce.Job:  map 100% reduce 73%
17/02/14 23:18:29 INFO mapreduce.Job:  map 100% reduce 74%
17/02/14 23:18:31 INFO mapreduce.Job:  map 100% reduce 75%
17/02/14 23:18:32 INFO mapreduce.Job:  map 100% reduce 76%
17/02/14 23:18:34 INFO mapreduce.Job:  map 100% reduce 77%
17/02/14 23:18:35 INFO mapreduce.Job:  map 100% reduce 78%
17/02/14 23:18:37 INFO mapreduce.Job:  map 100% reduce 80%
17/02/14 23:18:38 INFO mapreduce.Job:  map 100% reduce 81%
17/02/14 23:18:41 INFO mapreduce.Job:  map 100% reduce 82%
17/02/14 23:18:43 INFO mapreduce.Job:  map 100% reduce 83%
17/02/14 23:18:44 INFO mapreduce.Job:  map 100% reduce 85%
17/02/14 23:18:46 INFO mapreduce.Job:  map 100% reduce 86%
17/02/14 23:18:47 INFO mapreduce.Job:  map 100% reduce 87%
17/02/14 23:18:49 INFO mapreduce.Job:  map 100% reduce 88%
17/02/14 23:18:50 INFO mapreduce.Job:  map 100% reduce 90%
17/02/14 23:18:52 INFO mapreduce.Job:  map 100% reduce 91%
17/02/14 23:18:53 INFO mapreduce.Job:  map 100% reduce 93%
17/02/14 23:18:56 INFO mapreduce.Job:  map 100% reduce 96%
17/02/14 23:18:59 INFO mapreduce.Job:  map 100% reduce 98%
17/02/14 23:19:02 INFO mapreduce.Job:  map 100% reduce 99%
17/02/14 23:19:05 INFO mapreduce.Job:  map 100% reduce 100%
17/02/14 23:19:05 INFO mapreduce.Job: Job job_1487082597725_0003 completed successfully
17/02/14 23:19:05 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=4819214431
                FILE: Number of bytes written=9585795893
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=10800041148
                HDFS: Number of bytes written=10800000000
                HDFS: Number of read operations=990
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=12
        Job Counters
                Launched map tasks=324
                Launched reduce tasks=6
                Data-local map tasks=324
                Total time spent by all maps in occupied slots (ms)=3459694
                Total time spent by all reduces in occupied slots (ms)=1911114
                Total time spent by all map tasks (ms)=1729847
                Total time spent by all reduce tasks (ms)=637038
                Total vcore-seconds taken by all map tasks=6919388
                Total vcore-seconds taken by all reduce tasks=2548152
                Total megabyte-seconds taken by all map tasks=10628179968
                Total megabyte-seconds taken by all reduce tasks=4566288384
        Map-Reduce Framework
                Map input records=108000000
                Map output records=108000000
                Map output bytes=11016000000
                Map output materialized bytes=4725296334
                Input split bytes=41148
                Combine input records=0
                Combine output records=0
                Reduce input groups=108000000
                Reduce shuffle bytes=4725296334
                Reduce input records=108000000
                Reduce output records=108000000
                Spilled Records=216000000
                Shuffled Maps =1944
                Failed Shuffles=0
                Merged Map outputs=1944
                GC time elapsed (ms)=25518
                CPU time spent (ms)=1325670
                Physical memory (bytes) snapshot=166692392960
                Virtual memory (bytes) snapshot=1978983235584
                Total committed heap usage (bytes)=201307193344
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=10800000000
        File Output Format Counters
                Bytes Written=10800000000
17/02/14 23:19:05 INFO terasort.TeraSort: done

real    11m40.935s
user    0m10.827s
sys     0m1.083s
```


------