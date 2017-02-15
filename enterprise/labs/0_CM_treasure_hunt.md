```
What is ubertask optimization?
  - Whether to enable ubertask optimization, which runs "sufficiently small" jobs sequentially within a single JVM. "Small" is defined by the mapreduce.job.ubertask.maxmaps, mapreduce.job.ubertask.maxreduces, and mapreduce.job.ubertask.maxbytes settings.
Where in CM is the Kerberos Security Realm value displayed?
  - in Kerberos Security Realm (default realm) Properties
Which CDH service(s) host a property for enabling Kerberos authentication?
  - Zookeeper, HDFS, YARN
How do you upgrade the CM agents?
  - Via the yum command  'yum upgrade cloudera-manager-daemons cloudera-manager-agent'
Give the tsquery statement used to chart Hue's CPU utilization?
  - select cpu_system_rate + cpu_user_rate where category=ROLE and serviceName=$SERVICENAME
Name all the roles that make up the Hive service
  - Hive Metastore Server
  - HiveServer 2
  - WebHCat Server 
What steps must be completed before integrating Cloudera Manager with Kerberos?
  - Install KDC Server, Kerbero Client ,Realm Setup, Kerberos Lib on all nodes
  - For ad integration ( openldap libraries or sssd )
  
```