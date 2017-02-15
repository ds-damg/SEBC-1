#No Tables
-----------
```
[mglaserna@sebnnr1n1 ~]$ kinit -kt /tmp/mglaserna.keytab mglaserna
[mglaserna@sebnnr1n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_500
Default principal: mglaserna@SEBC.COM

Valid starting     Expires            Service principal
02/15/17 20:30:17  02/16/17 20:30:17  krbtgt/SEBC.COM@SEBC.COM
        renew until 02/22/17 20:30:17
[mglaserna@sebnnr1n1 ~]$ beeline
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
beeline> !connect jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM
scan complete in 5ms
Connecting to jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM
Enter username for jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM:
Enter password for jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM:
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa> show tables;
INFO  : Compiling command(queryId=hive_20170215203030_995a5969-ba2b-4100-be04-09c0a1bee611): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215203030_995a5969-ba2b-4100-be04-09c0a1bee611); Time taken: 0.069 seconds
INFO  : Executing command(queryId=hive_20170215203030_995a5969-ba2b-4100-be04-09c0a1bee611): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215203030_995a5969-ba2b-4100-be04-09c0a1bee611); Time taken: 0.177 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (0.363 seconds)

```
#Allow Super User
-----
```
0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa>

0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa> CREATE ROLE sentry_admin;
INFO  : Compiling command(queryId=hive_20170215203131_773ad60e-ac4b-432a-b992-c6b9f83afe70): CREATE ROLE sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215203131_773ad60e-ac4b-432a-b992-c6b9f83afe70); Time taken: 0.069 seconds
INFO  : Executing command(queryId=hive_20170215203131_773ad60e-ac4b-432a-b992-c6b9f83afe70): CREATE ROLE sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215203131_773ad60e-ac4b-432a-b992-c6b9f83afe70); Time taken: 0.852 seconds
INFO  : OK
No rows affected (0.933 seconds)
0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa> GRANT ALL ON SERVER server1 TO ROLE sentry_admin;
INFO  : Compiling command(queryId=hive_20170215203131_e291d4b1-d282-4bb1-88e7-e5ee5f560c72): GRANT ALL ON SERVER server1 TO ROLE sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215203131_e291d4b1-d282-4bb1-88e7-e5ee5f560c72); Time taken: 0.112 seconds
INFO  : Executing command(queryId=hive_20170215203131_e291d4b1-d282-4bb1-88e7-e5ee5f560c72): GRANT ALL ON SERVER server1 TO ROLE sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215203131_e291d4b1-d282-4bb1-88e7-e5ee5f560c72); Time taken: 0.102 seconds
INFO  : OK
No rows affected (0.229 seconds)
0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa> GRANT ROLE sentry_admin TO GROUP Display all 560 possibilities? (y or n)
0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa> GRANT ROLE sentry_admin TO GROUP mglaserna
. . . . . . . . . . . . . . . . . . . . . . .> ;
INFO  : Compiling command(queryId=hive_20170215203131_07183d9e-f978-49cf-8cb8-7c803a551d84): GRANT ROLE sentry_admin TO GROUP mglaserna
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215203131_07183d9e-f978-49cf-8cb8-7c803a551d84); Time taken: 0.073 seconds
INFO  : Executing command(queryId=hive_20170215203131_07183d9e-f978-49cf-8cb8-7c803a551d84): GRANT ROLE sentry_admin TO GROUP mglaserna
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215203131_07183d9e-f978-49cf-8cb8-7c803a551d84); Time taken: 0.096 seconds
INFO  : OK
No rows affected (0.183 seconds)
0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa> show tables;
INFO  : Compiling command(queryId=hive_20170215203131_3dac3ae9-7759-44af-8efc-98d6cfc655fb): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215203131_3dac3ae9-7759-44af-8efc-98d6cfc655fb); Time taken: 0.061 seconds
INFO  : Executing command(queryId=hive_20170215203131_3dac3ae9-7759-44af-8efc-98d6cfc655fb): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215203131_3dac3ae9-7759-44af-8efc-98d6cfc655fb); Time taken: 0.135 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.262 seconds)
0: jdbc:hive2://sebnnr2n2.sebc.com:10000/defa>
```
#Limit Users
------

```
[mglaserna@sebnnr1n1 ~]$ kinit george
Password for george@SEBC.COM:
[mglaserna@sebnnr1n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_500
Default principal: george@SEBC.COM

Valid starting     Expires            Service principal
02/15/17 20:43:52  02/16/17 20:43:52  krbtgt/SEBC.COM@SEBC.COM
        renew until 02/22/17 20:43:52
[mglaserna@sebnnr1n1 ~]$ beeline --fastconnect -u "jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM" -e "show tables"
scan complete in 3ms
Connecting to jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
INFO  : Compiling command(queryId=hive_20170215204444_949de884-628a-4ff3-8728-442146e0cac3): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215204444_949de884-628a-4ff3-8728-442146e0cac3); Time taken: 0.056 seconds
INFO  : Executing command(queryId=hive_20170215204444_949de884-628a-4ff3-8728-442146e0cac3): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215204444_949de884-628a-4ff3-8728-442146e0cac3); Time taken: 0.134 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.304 seconds)
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
Closing: 0: jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM
[mglaserna@sebnnr1n1 ~]$ kinit ferdinand
Password for ferdinand@SEBC.COM:
[mglaserna@sebnnr1n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_500
Default principal: ferdinand@SEBC.COM

Valid starting     Expires            Service principal
02/15/17 20:44:26  02/16/17 20:44:26  krbtgt/SEBC.COM@SEBC.COM
        renew until 02/22/17 20:44:26
[mglaserna@sebnnr1n1 ~]$ beeline --fastconnect -u "jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM" -e "show tables"
scan complete in 3ms
Connecting to jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
INFO  : Compiling command(queryId=hive_20170215204444_9284a7a9-872f-45cb-ad7d-32721f9ec1e8): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215204444_9284a7a9-872f-45cb-ad7d-32721f9ec1e8); Time taken: 0.07 seconds
INFO  : Executing command(queryId=hive_20170215204444_9284a7a9-872f-45cb-ad7d-32721f9ec1e8): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215204444_9284a7a9-872f-45cb-ad7d-32721f9ec1e8); Time taken: 0.138 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.321 seconds)
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
Closing: 0: jdbc:hive2://sebnnr2n2.sebc.com:10000/default;principal=hive/sebnnr2n2.sebc.com@SEBC.COM

```
