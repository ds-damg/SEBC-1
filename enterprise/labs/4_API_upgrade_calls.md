```
- Report the latest available version of the API
   curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/version" -k
v14

- Report the CM version

   curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v14/cm/version" -k
{
  "version" : "5.9.1",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20170112-1158",
  "gitHash" : "a66d8bbdbe8bc3ee54235e55423f2f76c7d9f3b1",
  "snapshot" : false
}[

- List all cm

  curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v14/users" -k
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "mglaserna",
    "roles" : [ "ROLE_ADMIN" ]
  }, {
    "name" : "minotour",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  } ]
}[

```