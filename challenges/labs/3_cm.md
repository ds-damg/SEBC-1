# i am using 5.8.3 that's why v14 is not yet out

```

[root@chalnnr2n2 ~]#  curl -u admin:admin "http://chalnnr2n2:7180/api/v12/cm/version" -k
{
  "version" : "5.8.3",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20161019-1014",
  "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
  "snapshot" : false
}[root@chalnnr2n2 ~]#  curl -u admin:admin "http://chalnnr2n2:7180/api/v12/hosts" -k
{
  "items" : [ {
    "hostId" : "305beb41-54f1-4217-b807-95a57c2803cd",
    "ipAddress" : "172.31.7.156",
    "hostname" : "chaldnr1n1.sebc.com",
    "rackId" : "/default",
    "hostUrl" : "http://chalnnr2n2.sebc.com:7180/cmf/hostRedirect/305beb41-54f1-4217-b807-95a57c2803cd",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15740305408
  }, {
    "hostId" : "5702d98b-353c-4130-aa8b-28f446dcd574",
    "ipAddress" : "172.31.9.198",
    "hostname" : "chaldnr1n3.sebc.com",
    "rackId" : "/default",
    "hostUrl" : "http://chalnnr2n2.sebc.com:7180/cmf/hostRedirect/5702d98b-353c-4130-aa8b-28f446dcd574",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15740305408
  }, {
    "hostId" : "20e5d9a2-a3d5-4ceb-876c-dcb18d4413ad",
    "ipAddress" : "172.31.15.132",
    "hostname" : "chaldnr2n2.sebc.com",
    "rackId" : "/default",
    "hostUrl" : "http://chalnnr2n2.sebc.com:7180/cmf/hostRedirect/20e5d9a2-a3d5-4ceb-876c-dcb18d4413ad",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15740305408
  }, {
    "hostId" : "cebdc7b2-660b-4355-9dff-4becdf50ada4",
    "ipAddress" : "172.31.0.162",
    "hostname" : "chalnnr1n1.sebc.com",
    "rackId" : "/default",
    "hostUrl" : "http://chalnnr2n2.sebc.com:7180/cmf/hostRedirect/cebdc7b2-660b-4355-9dff-4becdf50ada4",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15740305408
  }, {
    "hostId" : "i-03bee390a45d3f1d2",
    "ipAddress" : "172.31.5.37",
    "hostname" : "chalnnr2n2.sebc.com",
    "rackId" : "/default",
    "hostUrl" : "http://chalnnr2n2.sebc.com:7180/cmf/hostRedirect/i-03bee390a45d3f1d2",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15740305408
  } ]

```