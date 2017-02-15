 #!/bin/bash
 curl -X POST -H "Content-Type:application/json" -d '{ "items": [ { "command": "stop" } ] }' -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v6/clusters/mglaserna/services/hive/commands/stop" -k
 curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v12/clusters/mglaserna/services/hive/" -k
 curl -X POST -H "Content-Type:application/json" -d '{ "items": [ { "command": "start } ] }' -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v6/clusters/mglaserna/services/hive/commands/start" -k
 curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v12/clusters/mglaserna/services/hive/" -k                                                    {
 