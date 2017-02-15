[root@sebnnr1n1 ~]#  curl -X POST -H "Content-Type:application/json" -d '{ "items": [ { "command": "stop" } ] }' -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v6/clusters/mglaserna/services/hive/commands/stop" -k
{
  "id" : 1994,
  "name" : "Stop",
  "startTime" : "2017-02-15T17:22:04.089Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}[root@sebnnr1n1 ~]#curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v12/clusters/mglaserna/services/hive/" -k
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "https://sebnnr1n1.sebc.com:7183/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "https://sebnnr1n1.sebc.com:7183/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STOPPED",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  }, {
    "name" : "HIVE_WEBHCATS_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "STOPPED"
}[root@sebnnr1n1 ~]# curl -X POST -H "Content-Type:application/json" -d '{ "items": [ { "command": "start } ] }' -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v6/clusters/mglaserna/services/hive/commands/start" -k
{
  "id" : 2001,
  "name" : "Start",
  "startTime" : "2017-02-15T17:23:45.604Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
```
  [root@sebnnr1n1 ~]#curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v12/clusters/mglaserna/services/hive/" -k                                                    {
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "https://sebnnr1n1.sebc.com:7183/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "https://sebnnr1n1.sebc.com:7183/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  }, {
    "name" : "HIVE_WEBHCATS_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "GOOD_HEALTH"
```