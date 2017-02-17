```
[raffles@chalnnr1n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_2000
Default principal: raffles@MGLASERNA.SG

Valid starting     Expires            Service principal
02/17/17 07:07:18  02/18/17 07:07:18  krbtgt/MGLASERNA.SG@MGLASERNA.SG
        renew until 02/24/17 07:07:18

[raffles@chalnnr1n1 ~]$ beeline --fastconnect -u "jdbc:hive2://chalnnr2n2.sebc.com:10000/default;principal=hive/chalnnr2n2.sebc.com@MGLASERNA.SG"  -e "show tables"
scan complete in 3ms
Connecting to jdbc:hive2://chalnnr2n2.sebc.com:10000/default;principal=hive/chalnnr2n2.sebc.com@MGLASERNA.SG
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
INFO  : Compiling command(queryId=hive_20170217072929_cfff5a10-24b8-425b-9348-635fb498ca74): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170217072929_cfff5a10-24b8-425b-9348-635fb498ca74); Time taken: 0.072 seconds
INFO  : Executing command(queryId=hive_20170217072929_cfff5a10-24b8-425b-9348-635fb498ca74): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170217072929_cfff5a10-24b8-425b-9348-635fb498ca74); Time taken: 0.15 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.376 seconds)
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
Closing: 0: jdbc:hive2://chalnnr2n2.sebc.com:10000/default;principal=hive/chalnnr2n2.sebc.com@MGLASERNA.SG

[fullerton@chalnnr1n1 ~]$ beeline --fastconnect -u "jdbc:hive2://chalnnr2n2.sebc.com:10000/default;principal=hive/chalnnr2n2.sebc.com@MGLASERNA.SG"
scan complete in 3ms
Connecting to jdbc:hive2://chalnnr2n2.sebc.com:10000/default;principal=hive/chalnnr2n2.sebc.com@MGLASERNA.SG
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
0: jdbc:hive2://chalnnr2n2.sebc.com:10000/def> show tables;
INFO  : Compiling command(queryId=hive_20170217073939_bfbc4d13-e8c9-4ca0-96d8-113c6c93d34d): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170217073939_bfbc4d13-e8c9-4ca0-96d8-113c6c93d34d); Time taken: 0.052 seconds
INFO  : Executing command(queryId=hive_20170217073939_bfbc4d13-e8c9-4ca0-96d8-113c6c93d34d): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170217073939_bfbc4d13-e8c9-4ca0-96d8-113c6c93d34d); Time taken: 0.143 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.313 seconds)
0: jdbc:hive2://chalnnr2n2.sebc.com:10000/def> Closing: 0: jdbc:hive2://chalnnr2n2.sebc.com:10000/default;principal=hive/chalnnr2n2.sebc.com@MGLASERNA.SG
[fullerton@chalnnr1n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_3000
Default principal: fullerton@MGLASERNA.SG

Valid starting     Expires            Service principal
02/17/17 07:17:00  02/18/17 07:17:00  krbtgt/MGLASERNA.SG@MGLASERNA.SG
        renew until 02/24/17 07:17:00
[fullerton@chalnnr1n1 ~]$

###############################additional ############

No rows affected (0.107 seconds)
0: jdbc:hive2://chalnnr2n2.sebc.com:10000/def> show grant role hospitality;
INFO  : Compiling command(queryId=hive_20170217075252_ba4356b2-f26f-4150-880d-a7439ceb0744): show grant role hospitality
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:database, type:string, comment:from deserializer), FieldSchema(name:table, type:string, comment:from deserializer), FieldSchema(name:partition, type:string, comment:from deserializer), FieldSchema(name:column, type:string, comment:from deserializer), FieldSchema(name:principal_name, type:string, comment:from deserializer), FieldSchema(name:principal_type, type:string, comment:from deserializer), FieldSchema(name:privilege, type:string, comment:from deserializer), FieldSchema(name:grant_option, type:boolean, comment:from deserializer), FieldSchema(name:grant_time, type:bigint, comment:from deserializer), FieldSchema(name:grantor, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170217075252_ba4356b2-f26f-4150-880d-a7439ceb0744); Time taken: 0.051 seconds
INFO  : Executing command(queryId=hive_20170217075252_ba4356b2-f26f-4150-880d-a7439ceb0744): show grant role hospitality
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170217075252_ba4356b2-f26f-4150-880d-a7439ceb0744); Time taken: 0.022 seconds
INFO  : OK
+-----------+--------+------------+---------+-----------------+-----------------+------------+---------------+-------------------+----------+--+
| database  | table  | partition  | column  | principal_name  | principal_type  | privilege  | grant_option  |    grant_time     | grantor  |
+-----------+--------+------------+---------+-----------------+-----------------+------------+---------------+-------------------+----------+--+
| default   |        |            |         | hospitality     | ROLE            | select     | false         | 1487317155538000  | --       |
+-----------+--------+------------+---------+-----------------+-----------------+------------+---------------+-------------------+----------+--+
1 row selected (0.161 seconds)
0: jdbc:hive2://chalnnr2n2.sebc.com:10000/def> show grant role retail;
INFO  : Compiling command(queryId=hive_20170217075353_dbd05885-4a3a-4b07-9ed9-75c31722d971): show grant role retail
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:database, type:string, comment:from deserializer), FieldSchema(name:table, type:string, comment:from deserializer), FieldSchema(name:partition, type:string, comment:from deserializer), FieldSchema(name:column, type:string, comment:from deserializer), FieldSchema(name:principal_name, type:string, comment:from deserializer), FieldSchema(name:principal_type, type:string, comment:from deserializer), FieldSchema(name:privilege, type:string, comment:from deserializer), FieldSchema(name:grant_option, type:boolean, comment:from deserializer), FieldSchema(name:grant_time, type:bigint, comment:from deserializer), FieldSchema(name:grantor, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170217075353_dbd05885-4a3a-4b07-9ed9-75c31722d971); Time taken: 0.051 seconds
INFO  : Executing command(queryId=hive_20170217075353_dbd05885-4a3a-4b07-9ed9-75c31722d971): show grant role retail
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170217075353_dbd05885-4a3a-4b07-9ed9-75c31722d971); Time taken: 0.028 seconds
INFO  : OK
+-----------+--------+------------+---------+-----------------+-----------------+------------+---------------+-------------------+----------+--+
| database  | table  | partition  | column  | principal_name  | principal_type  | privilege  | grant_option  |    grant_time     | grantor  |
+-----------+--------+------------+---------+-----------------+-----------------+------------+---------------+-------------------+----------+--+
| *         |        |            |         | retail          | ROLE            | *          | false         | 1487316444610000  | --       |
+-----------+--------+------------+---------+-----------------+-----------------+------------+---------------+-------------------+----------+--+
1 row selected (0.098 seconds)



```


