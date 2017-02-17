---
```
[root@chalnnr2n2 ~]# head -1 /var/log/cloudera-scm-server/cloudera-scm-server.log
2017-02-17 05:53:35,300 INFO main:com.cloudera.server.cmf.Main: Starting SCM Server. JVM Args: [-Dlog4j.configuration=file:/etc/cloudera-scm-server/log4j.properties, -Dfile.encoding=UTF-8, -Dcmf.root.logger=INFO,LOGFILE, -Dcmf.log.dir=/var/log/cloudera-scm-server, -Dcmf.log.file=cloudera-scm-server.log, -Dcmf.jetty.threshhold=WARN, -Dcmf.schema.dir=/usr/share/cmf/schema, -Djava.awt.headless=true, -Djava.net.preferIPv4Stack=true, -Dpython.home=/usr/share/cmf/python, -XX:+UseConcMarkSweepGC, -XX:+UseParNewGC, -XX:+HeapDumpOnOutOfMemoryError, -Xmx2G, -XX:MaxPermSize=256m, -XX:+HeapDumpOnOutOfMemoryError, -XX:HeapDumpPath=/tmp, -XX:OnOutOfMemoryError=kill -9 %p], Args: [], Version: 5.8.3 (#8 built by jenkins on 20161019-1014 git: 518f0d6d44abc87bc392646e4369a20c8192b7cf)
```
----

```
[root@chalnnr2n2 ~]# cat /var/log/cloudera-scm-server/cloudera-scm-server.log | grep "Started Jetty"
2017-02-17 05:54:58,905 INFO WebServerImpl:com.cloudera.server.cmf.WebServerImpl: Started Jetty server.
```
---
```
# Copyright (c) 2012 Cloudera, Inc. All rights reserved.
#
# This file describes the database connection.
#

# The database type
# Currently 'mysql', 'postgresql' and 'oracle' are valid databases.
com.cloudera.cmf.db.type=mysql

# The database host
# If a non standard port is needed, use 'hostname:port'
com.cloudera.cmf.db.host=chalnnr1n1.sebc.com

# The database name
com.cloudera.cmf.db.name=scm

# The database user
com.cloudera.cmf.db.user=scm

# The database user's password
com.cloudera.cmf.db.password=scm_passw0rd
```

