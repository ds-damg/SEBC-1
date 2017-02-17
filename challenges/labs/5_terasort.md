```
[raffles@chalnnr1n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_2000
Default principal: raffles@MGLASERNA.SG

Valid starting     Expires            Service principal
02/17/17 07:07:18  02/18/17 07:07:18  krbtgt/MGLASERNA.SG@MGLASERNA.SG
        renew until 02/24/17 07:07:18
[raffles@chalnnr1n1 ~]$



[raffles@chalnnr1n1 ~]$  time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=6 -Ddfs.blocksize=33554432  51200000 /user/raffles/t^C
[raffles@chalnnr1n1 ~]$
[raffles@chalnnr1n1 ~]$ time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=4 /user/raffles/tgen512m /user/raffles/tgen512m"
> ]^C
[raffles@chalnnr1n1 ~]$ time  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort -Dmapreduce.map.memory.mb=6096  -Dmapreduce.job.maps=4 /user/raffles/tgen512m /user/raffles/tgen512m
17/02/17 07:08:07 INFO terasort.TeraSort: starting
17/02/17 07:08:08 INFO hdfs.DFSClient: Created token for raffles: HDFS_DELEGATION_TOKEN owner=raffles@MGLASERNA.SG, renewer=yarn, realUser=, issueDate=1487315288798, maxDate=1487920088798, sequenceNumber=1, masterKeyId=2 on 172.31.0.162:8020
17/02/17 07:08:08 INFO security.TokenCache: Got dt for hdfs://chalnnr1n1.sebc.com:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.0.162:8020, Ident: (token for raffles: HDFS_DELEGATION_TOKEN owner=raffles@MGLASERNA.SG, renewer=yarn, realUser=, issueDate=1487315288798, maxDate=1487920088798, sequenceNumber=1, masterKeyId=2)
17/02/17 07:08:09 INFO input.FileInputFormat: Total input paths to process : 6
Spent 381ms computing base-splits.
Spent 4ms computing TeraScheduler splits.
Computing input splits took 386ms
Sampling 10 splits of 156
Making 6 from 100000 sampled records
Computing parititions took 1065ms
Spent 1454ms computing partitions.
17/02/17 07:08:10 INFO client.RMProxy: Connecting to ResourceManager at chalnnr1n1.sebc.com/172.31.0.162:8032
17/02/17 07:08:10 INFO mapreduce.JobSubmitter: number of splits:156
17/02/17 07:08:10 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487314871246_0001
17/02/17 07:08:10 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.0.162:8020, Ident: (token for raffles: HDFS_DELEGATION_TOKEN owner=raffles@MGLASERNA.SG, renewer=yarn, realUser=, issueDate=1487315288798, maxDate=1487920088798, sequenceNumber=1, masterKeyId=2)
17/02/17 07:08:11 INFO impl.YarnClientImpl: Submitted application application_1487314871246_0001
17/02/17 07:08:11 INFO mapreduce.Job: The url to track the job: http://chalnnr1n1.sebc.com:8088/proxy/application_1487314871246_0001/
17/02/17 07:08:11 INFO mapreduce.Job: Running job: job_1487314871246_0001
17/02/17 07:08:22 INFO mapreduce.Job: Job job_1487314871246_0001 running in uber mode : false
17/02/17 07:08:22 INFO mapreduce.Job:  map 0% reduce 0%
17/02/17 07:08:30 INFO mapreduce.Job:  map 1% reduce 0%
17/02/17 07:08:33 INFO mapreduce.Job:  map 2% reduce 0%
17/02/17 07:08:35 INFO mapreduce.Job:  map 3% reduce 0%
17/02/17 07:08:39 INFO mapreduce.Job:  map 4% reduce 0%
17/02/17 07:08:45 INFO mapreduce.Job:  map 6% reduce 0%
17/02/17 07:08:51 INFO mapreduce.Job:  map 7% reduce 0%
17/02/17 07:08:52 INFO mapreduce.Job:  map 8% reduce 0%
17/02/17 07:08:57 INFO mapreduce.Job:  map 9% reduce 0%
17/02/17 07:08:59 INFO mapreduce.Job:  map 10% reduce 0%
17/02/17 07:09:03 INFO mapreduce.Job:  map 11% reduce 0%
17/02/17 07:09:05 INFO mapreduce.Job:  map 12% reduce 0%
17/02/17 07:09:09 INFO mapreduce.Job:  map 13% reduce 0%
17/02/17 07:09:11 INFO mapreduce.Job:  map 14% reduce 0%
17/02/17 07:09:15 INFO mapreduce.Job:  map 15% reduce 0%
17/02/17 07:09:17 INFO mapreduce.Job:  map 16% reduce 0%
17/02/17 07:09:21 INFO mapreduce.Job:  map 17% reduce 0%
17/02/17 07:09:23 INFO mapreduce.Job:  map 18% reduce 0%
17/02/17 07:09:27 INFO mapreduce.Job:  map 19% reduce 0%
17/02/17 07:09:30 INFO mapreduce.Job:  map 20% reduce 0%
17/02/17 07:09:33 INFO mapreduce.Job:  map 21% reduce 0%
17/02/17 07:09:37 INFO mapreduce.Job:  map 22% reduce 0%
17/02/17 07:09:41 INFO mapreduce.Job:  map 23% reduce 0%
17/02/17 07:09:43 INFO mapreduce.Job:  map 24% reduce 0%
17/02/17 07:09:47 INFO mapreduce.Job:  map 25% reduce 0%
17/02/17 07:09:49 INFO mapreduce.Job:  map 26% reduce 0%
17/02/17 07:09:53 INFO mapreduce.Job:  map 27% reduce 0%
17/02/17 07:09:55 INFO mapreduce.Job:  map 28% reduce 0%
17/02/17 07:09:59 INFO mapreduce.Job:  map 29% reduce 0%
17/02/17 07:10:05 INFO mapreduce.Job:  map 30% reduce 0%
17/02/17 07:10:06 INFO mapreduce.Job:  map 31% reduce 0%
17/02/17 07:10:11 INFO mapreduce.Job:  map 32% reduce 0%
17/02/17 07:10:12 INFO mapreduce.Job:  map 33% reduce 0%
17/02/17 07:10:17 INFO mapreduce.Job:  map 34% reduce 0%
17/02/17 07:10:18 INFO mapreduce.Job:  map 35% reduce 0%
17/02/17 07:10:23 INFO mapreduce.Job:  map 36% reduce 0%
17/02/17 07:10:24 INFO mapreduce.Job:  map 37% reduce 0%
17/02/17 07:10:29 INFO mapreduce.Job:  map 38% reduce 0%
17/02/17 07:10:32 INFO mapreduce.Job:  map 39% reduce 0%
17/02/17 07:10:35 INFO mapreduce.Job:  map 40% reduce 0%
17/02/17 07:10:38 INFO mapreduce.Job:  map 41% reduce 0%
17/02/17 07:10:41 INFO mapreduce.Job:  map 42% reduce 0%
17/02/17 07:10:45 INFO mapreduce.Job:  map 43% reduce 0%
17/02/17 07:10:48 INFO mapreduce.Job:  map 44% reduce 0%
17/02/17 07:10:51 INFO mapreduce.Job:  map 45% reduce 0%
17/02/17 07:10:54 INFO mapreduce.Job:  map 46% reduce 0%
17/02/17 07:10:58 INFO mapreduce.Job:  map 47% reduce 0%
17/02/17 07:11:01 INFO mapreduce.Job:  map 48% reduce 0%
17/02/17 07:11:04 INFO mapreduce.Job:  map 49% reduce 0%
17/02/17 07:11:07 INFO mapreduce.Job:  map 50% reduce 0%
17/02/17 07:11:10 INFO mapreduce.Job:  map 51% reduce 0%
17/02/17 07:11:13 INFO mapreduce.Job:  map 52% reduce 0%
17/02/17 07:11:16 INFO mapreduce.Job:  map 53% reduce 0%
17/02/17 07:11:19 INFO mapreduce.Job:  map 54% reduce 0%
17/02/17 07:11:25 INFO mapreduce.Job:  map 56% reduce 0%
17/02/17 07:11:31 INFO mapreduce.Job:  map 58% reduce 0%
17/02/17 07:11:37 INFO mapreduce.Job:  map 60% reduce 0%
17/02/17 07:11:43 INFO mapreduce.Job:  map 62% reduce 0%
17/02/17 07:11:49 INFO mapreduce.Job:  map 63% reduce 0%
17/02/17 07:11:53 INFO mapreduce.Job:  map 64% reduce 0%
17/02/17 07:11:55 INFO mapreduce.Job:  map 65% reduce 0%
17/02/17 07:11:59 INFO mapreduce.Job:  map 66% reduce 0%
17/02/17 07:12:01 INFO mapreduce.Job:  map 67% reduce 0%
17/02/17 07:12:05 INFO mapreduce.Job:  map 68% reduce 0%
17/02/17 07:12:07 INFO mapreduce.Job:  map 69% reduce 0%
17/02/17 07:12:11 INFO mapreduce.Job:  map 70% reduce 0%
17/02/17 07:12:13 INFO mapreduce.Job:  map 71% reduce 0%
17/02/17 07:12:17 INFO mapreduce.Job:  map 72% reduce 0%
17/02/17 07:12:19 INFO mapreduce.Job:  map 73% reduce 0%
17/02/17 07:12:23 INFO mapreduce.Job:  map 74% reduce 0%
17/02/17 07:12:25 INFO mapreduce.Job:  map 75% reduce 0%
17/02/17 07:12:29 INFO mapreduce.Job:  map 76% reduce 0%
17/02/17 07:12:31 INFO mapreduce.Job:  map 77% reduce 0%
17/02/17 07:12:35 INFO mapreduce.Job:  map 78% reduce 0%
17/02/17 07:12:37 INFO mapreduce.Job:  map 79% reduce 0%
17/02/17 07:12:43 INFO mapreduce.Job:  map 80% reduce 0%
17/02/17 07:12:44 INFO mapreduce.Job:  map 81% reduce 0%
17/02/17 07:12:49 INFO mapreduce.Job:  map 82% reduce 0%
17/02/17 07:12:50 INFO mapreduce.Job:  map 83% reduce 0%
17/02/17 07:12:56 INFO mapreduce.Job:  map 84% reduce 0%
17/02/17 07:12:59 INFO mapreduce.Job:  map 85% reduce 0%
17/02/17 07:13:03 INFO mapreduce.Job:  map 85% reduce 5%
17/02/17 07:13:06 INFO mapreduce.Job:  map 86% reduce 5%
17/02/17 07:13:08 INFO mapreduce.Job:  map 87% reduce 5%
17/02/17 07:13:14 INFO mapreduce.Job:  map 88% reduce 5%
17/02/17 07:13:20 INFO mapreduce.Job:  map 89% reduce 5%
17/02/17 07:13:24 INFO mapreduce.Job:  map 90% reduce 5%
17/02/17 07:13:30 INFO mapreduce.Job:  map 91% reduce 5%
17/02/17 07:13:32 INFO mapreduce.Job:  map 92% reduce 5%
17/02/17 07:13:39 INFO mapreduce.Job:  map 93% reduce 5%
17/02/17 07:13:42 INFO mapreduce.Job:  map 94% reduce 5%
17/02/17 07:13:48 INFO mapreduce.Job:  map 95% reduce 5%
17/02/17 07:13:51 INFO mapreduce.Job:  map 96% reduce 5%
17/02/17 07:13:56 INFO mapreduce.Job:  map 97% reduce 5%
17/02/17 07:14:02 INFO mapreduce.Job:  map 98% reduce 5%
17/02/17 07:14:05 INFO mapreduce.Job:  map 99% reduce 5%
17/02/17 07:14:10 INFO mapreduce.Job:  map 99% reduce 6%
17/02/17 07:14:12 INFO mapreduce.Job:  map 100% reduce 6%
17/02/17 07:14:16 INFO mapreduce.Job:  map 100% reduce 8%
17/02/17 07:14:19 INFO mapreduce.Job:  map 100% reduce 10%
17/02/17 07:14:20 INFO mapreduce.Job:  map 100% reduce 18%
17/02/17 07:14:22 INFO mapreduce.Job:  map 100% reduce 19%
17/02/17 07:14:23 INFO mapreduce.Job:  map 100% reduce 21%
17/02/17 07:14:25 INFO mapreduce.Job:  map 100% reduce 23%
17/02/17 07:14:26 INFO mapreduce.Job:  map 100% reduce 24%
17/02/17 07:14:28 INFO mapreduce.Job:  map 100% reduce 26%
17/02/17 07:14:29 INFO mapreduce.Job:  map 100% reduce 28%
17/02/17 07:14:31 INFO mapreduce.Job:  map 100% reduce 29%
17/02/17 07:14:32 INFO mapreduce.Job:  map 100% reduce 32%
17/02/17 07:14:35 INFO mapreduce.Job:  map 100% reduce 33%
17/02/17 07:14:42 INFO mapreduce.Job:  map 100% reduce 40%
17/02/17 07:14:45 INFO mapreduce.Job:  map 100% reduce 42%
17/02/17 07:14:47 INFO mapreduce.Job:  map 100% reduce 50%
17/02/17 07:14:48 INFO mapreduce.Job:  map 100% reduce 52%
17/02/17 07:14:50 INFO mapreduce.Job:  map 100% reduce 54%
17/02/17 07:14:51 INFO mapreduce.Job:  map 100% reduce 56%
17/02/17 07:14:53 INFO mapreduce.Job:  map 100% reduce 57%
17/02/17 07:14:54 INFO mapreduce.Job:  map 100% reduce 59%
17/02/17 07:14:56 INFO mapreduce.Job:  map 100% reduce 60%
17/02/17 07:14:57 INFO mapreduce.Job:  map 100% reduce 62%
17/02/17 07:14:59 INFO mapreduce.Job:  map 100% reduce 65%
17/02/17 07:15:01 INFO mapreduce.Job:  map 100% reduce 67%
17/02/17 07:15:09 INFO mapreduce.Job:  map 100% reduce 75%
17/02/17 07:15:12 INFO mapreduce.Job:  map 100% reduce 85%
17/02/17 07:15:15 INFO mapreduce.Job:  map 100% reduce 88%
17/02/17 07:15:18 INFO mapreduce.Job:  map 100% reduce 91%
17/02/17 07:15:21 INFO mapreduce.Job:  map 100% reduce 95%
17/02/17 07:15:24 INFO mapreduce.Job:  map 100% reduce 98%
17/02/17 07:15:27 INFO mapreduce.Job:  map 100% reduce 100%
17/02/17 07:15:27 INFO mapreduce.Job: Job job_1487314871246_0001 completed successfully
17/02/17 07:15:27 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=2283966112
                FILE: Number of bytes written=4544149748
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=5120020436
                HDFS: Number of bytes written=5120000000
                HDFS: Number of read operations=486
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=12
        Job Counters
                Launched map tasks=156
                Launched reduce tasks=6
                Data-local map tasks=156
                Total time spent by all maps in occupied slots (ms)=1671474
                Total time spent by all reduces in occupied slots (ms)=666432
                Total time spent by all map tasks (ms)=835737
                Total time spent by all reduce tasks (ms)=222144
                Total vcore-seconds taken by all map tasks=835737
                Total vcore-seconds taken by all reduce tasks=222144
                Total megabyte-seconds taken by all map tasks=5134768128
                Total megabyte-seconds taken by all reduce tasks=1592328192
        Map-Reduce Framework
                Map input records=51200000
                Map output records=51200000
                Map output bytes=5222400000
                Map output materialized bytes=2240082708
                Input split bytes=20436
                Combine input records=0
                Combine output records=0
                Reduce input groups=51200000
                Reduce shuffle bytes=2240082708
                Reduce input records=51200000
                Reduce output records=51200000
                Spilled Records=102400000
                Shuffled Maps =936
                Failed Shuffles=0
                Merged Map outputs=936
                GC time elapsed (ms)=12254
                CPU time spent (ms)=645250
                Physical memory (bytes) snapshot=82449928192
                Virtual memory (bytes) snapshot=974109696000
                Total committed heap usage (bytes)=97916551168
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=5120000000
        File Output Format Counters
                Bytes Written=5120000000
17/02/17 07:15:27 INFO terasort.TeraSort: done

real    7m21.713s
user    0m9.616s
sys     0m0.927s


```