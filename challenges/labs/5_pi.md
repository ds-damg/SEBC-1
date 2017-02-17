```
[fullerton@chalnnr1n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_3000
Default principal: fullerton@MGLASERNA.SG

Valid starting     Expires            Service principal
02/17/17 07:17:00  02/18/17 07:17:00  krbtgt/MGLASERNA.SG@MGLASERNA.SG
        renew until 02/24/17 07:17:00
[fullerton@chalnnr1n1 ~]$  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 10 100
Number of Maps  = 10
Samples per Map = 100
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Wrote input for Map #5
Wrote input for Map #6
Wrote input for Map #7
Wrote input for Map #8
Wrote input for Map #9
Starting Job
17/02/17 07:18:02 INFO client.RMProxy: Connecting to ResourceManager at chalnnr1n1.sebc.com/172.31.0.162:8032
17/02/17 07:18:02 INFO hdfs.DFSClient: Created token for fullerton: HDFS_DELEGATION_TOKEN owner=fullerton@MGLASERNA.SG, renewer=yarn, realUser=, issueDate=1487315882569, maxDate=1487920682569, sequenceNumber=2, masterKeyId=2 on 172.31.0.162:8020
17/02/17 07:18:02 INFO security.TokenCache: Got dt for hdfs://chalnnr1n1.sebc.com:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.0.162:8020, Ident: (token for fullerton: HDFS_DELEGATION_TOKEN owner=fullerton@MGLASERNA.SG, renewer=yarn, realUser=, issueDate=1487315882569, maxDate=1487920682569, sequenceNumber=2, masterKeyId=2)
17/02/17 07:18:02 INFO input.FileInputFormat: Total input paths to process : 10
17/02/17 07:18:02 INFO mapreduce.JobSubmitter: number of splits:10
17/02/17 07:18:02 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487314871246_0002
17/02/17 07:18:02 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.0.162:8020, Ident: (token for fullerton: HDFS_DELEGATION_TOKEN owner=fullerton@MGLASERNA.SG, renewer=yarn, realUser=, issueDate=1487315882569, maxDate=1487920682569, sequenceNumber=2, masterKeyId=2)
17/02/17 07:18:03 INFO impl.YarnClientImpl: Submitted application application_1487314871246_0002
17/02/17 07:18:03 INFO mapreduce.Job: The url to track the job: http://chalnnr1n1.sebc.com:8088/proxy/application_1487314871246_0002/
17/02/17 07:18:03 INFO mapreduce.Job: Running job: job_1487314871246_0002
17/02/17 07:18:12 INFO mapreduce.Job: Job job_1487314871246_0002 running in uber mode : false
17/02/17 07:18:12 INFO mapreduce.Job:  map 0% reduce 0%
17/02/17 07:18:21 INFO mapreduce.Job:  map 20% reduce 0%
17/02/17 07:18:26 INFO mapreduce.Job:  map 40% reduce 0%
17/02/17 07:18:30 INFO mapreduce.Job:  map 50% reduce 0%
17/02/17 07:18:31 INFO mapreduce.Job:  map 60% reduce 0%
17/02/17 07:18:35 INFO mapreduce.Job:  map 70% reduce 0%
17/02/17 07:18:36 INFO mapreduce.Job:  map 80% reduce 0%
17/02/17 07:18:40 INFO mapreduce.Job:  map 90% reduce 0%
17/02/17 07:18:41 INFO mapreduce.Job:  map 100% reduce 0%
17/02/17 07:18:46 INFO mapreduce.Job:  map 100% reduce 100%
17/02/17 07:18:46 INFO mapreduce.Job: Job job_1487314871246_0002 completed successfully
17/02/17 07:18:46 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=94
                FILE: Number of bytes written=1356657
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=2770
                HDFS: Number of bytes written=215
                HDFS: Number of read operations=43
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=3
        Job Counters
                Launched map tasks=10
                Launched reduce tasks=1
                Data-local map tasks=10
                Total time spent by all maps in occupied slots (ms)=131487
                Total time spent by all reduces in occupied slots (ms)=11445
                Total time spent by all map tasks (ms)=43829
                Total time spent by all reduce tasks (ms)=3815
                Total vcore-seconds taken by all map tasks=43829
                Total vcore-seconds taken by all reduce tasks=3815
                Total megabyte-seconds taken by all map tasks=314166272
                Total megabyte-seconds taken by all reduce tasks=27345920
        Map-Reduce Framework
                Map input records=10
                Map output records=20
                Map output bytes=180
                Map output materialized bytes=340
                Input split bytes=1590
                Combine input records=0
                Combine output records=0
                Reduce input groups=2
                Reduce shuffle bytes=340
                Reduce input records=20
                Reduce output records=0
                Spilled Records=40
                Shuffled Maps =10
                Failed Shuffles=0
                Merged Map outputs=10
                GC time elapsed (ms)=216
                CPU time spent (ms)=7570
                Physical memory (bytes) snapshot=4854812672
                Virtual memory (bytes) snapshot=76028473344
                Total committed heap usage (bytes)=5783945216
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=1180
        File Output Format Counters
                Bytes Written=97
Job Finished in 44.682 seconds
Estimated value of Pi is 3.14800000000000000000

```