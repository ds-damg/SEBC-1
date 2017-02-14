####Commands Use 
```
-Running in hdfs user
#Create Directory
hadoop fs -mkdir /precious

#Put zip file to precious directory
hadoop fs -put /tmp/SEBC.zip /precious/

#List if file is there
hadoop fs -ls /precious/

#Allow snapshot on directory
hdfs dfsadmin -allowSnapshot /precious/

#Create Snapshot on dir
hdfs dfs -createSnapshot  /precious/ precious_snapshot

#List Snapshots
hdfs lsSnapshottableDir  - to show available snapshot for user

#Try to remove precious dir
hadoop fs -rm -r /precious
rm: Failed to move to trash: hdfs://sebnameservice1/precious: The directory /precious cannot be deleted since /precious is snapshottable and already has snapshots

#Remove zip file
hadoop fs -rm /precious/SEBC.zip

#Restore SEBC dir
hadoop fs -cp /precious/.snapshot/precious_snapshot/SEBC.zip /precious
```

