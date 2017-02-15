```

=~=~=~=~=~=~=~=~=~=~=~= PuTTY log 2017.02.16 01:02:59 =~=~=~=~=~=~=~=~=~=~=~=
curl -u mglaserna:cloudera "https://sebnnr1n1:7183/api/v2/cm/deployment" -k 
{
  "timestamp" : "2017-02-15T17:03:00.432Z",
  "clusters" : [ {
    "name" : "mglaserna",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "1459617792"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_enable_impersonation",
            "value" : "false"
          }, {
            "name" : "hiveserver2_java_heapsize",
            "value" : "1459617792"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "2978689843"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "501"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "sebnnr1n1.sebc.com"
        }, {
          "name" : "hive_metastore_database_name",
          "value" : "metas"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "metas_passw0rd"
        }, {
          "name" : "hive_metastore_database_user",
          "value" : "metas"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-80f90781a58e5ecb8e16c5b534703130",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-80f90781a58e5ecb8e16c5b534703130",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c0m89hvi6jolm5742v8cly583"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-80f90781a58e5ecb8e16c5b534703130",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dr4hbwluq3zfmg4nvlnrokgvl"
          } ]
        }
      }, {
        "name" : "hive-WEBHCAT-80f90781a58e5ecb8e16c5b534703130",
        "type" : "WEBHCAT",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "hive_webhcat_secret_key",
            "value" : "uinjeyp3JbTiLn2AkQJFd140eO64af"
          }, {
            "name" : "role_jceks_password",
            "value" : "9kp3vppau6amecdqmnhu7ztfm"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "dataDir",
            "value" : "/mnt/disk2/var/lib/zookeeper"
          }, {
            "name" : "dataLogDir",
            "value" : "/mnt/disk2/var/lib/zookeeper"
          } ]
        } ],
        "items" : [ {
          "name" : "enableSecurity",
          "value" : "true"
        } ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-80f90781a58e5ecb8e16c5b534703130",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5l8vyh319dtmdwmly57xctm7s"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "eosa1pk4d9q0h9gd2ycts5zmn"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-d10daf28e4c2496635eed1ca0b3d6256",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "10431eb1-6684-461f-8a91-329e124a8d53"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6qrfnn0c3gfdirwac2pm9u58t"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "sebnnr1n1.sebc.com"
        }, {
          "name" : "database_password",
          "value" : "hue_passw0rd"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-80f90781a58e5ecb8e16c5b534703130"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-80f90781a58e5ecb8e16c5b534703130",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "jyfvnjpcyubasu6l1tcqqm8u"
          }, {
            "name" : "secret_key",
            "value" : "iE4GMeM3Qr0vDJYJX2eB85iooyJVnb"
          } ]
        }
      }, {
        "name" : "hue-KT_RENEWER-80f90781a58e5ecb8e16c5b534703130",
        "type" : "KT_RENEWER",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3ir0c7d2kdv79ta0vje9l1f35"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_data_dir",
            "value" : "/mnt/disk2/var/lib/oozie/data"
          }, {
            "name" : "oozie_database_host",
            "value" : "sebnnr1n1.sebc.com"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie_passw0rd"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "oozie_sharelib_rootdir",
          "value" : "/mnt/disk2/user/oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5iauu9ou1vdbo7mn8iff975xp"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "1"
          }, {
            "name" : "mapreduce_map_memory_mb",
            "value" : "7168"
          }, {
            "name" : "mapreduce_reduce_memory_mb",
            "value" : "7168"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/mnt/data1/yarn/nm,/mnt/data2/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs,/mnt/data1/yarn/container-logs,/mnt/data2/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "8"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "9216"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "yarn_scheduler_increment_allocation_vcores",
            "value" : "2"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "7168"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "4"
          }, {
            "name" : "yarn_scheduler_minimum_allocation_mb",
            "value" : "3072"
          }, {
            "name" : "yarn_scheduler_minimum_allocation_vcores",
            "value" : "4"
          } ]
        } ],
        "items" : [ {
          "name" : "hadoop_secure_web_ui",
          "value" : "true"
        }, {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_fs_scheduled_allocations",
          "value" : "{\"defaultFairSharePreemptionThreshold\":null,\"defaultFairSharePreemptionTimeout\":null,\"defaultMinSharePreemptionTimeout\":null,\"defaultQueueSchedulingPolicy\":\"drf\",\"queueMaxAMShareDefault\":null,\"queueMaxAppsDefault\":null,\"queuePlacementRules\":[{\"create\":true,\"name\":\"specified\",\"queue\":null,\"rules\":null},{\"create\":null,\"name\":\"nestedUserQueue\",\"queue\":null,\"rules\":[{\"create\":null,\"name\":\"default\",\"queue\":\"users\",\"rules\":null}]},{\"create\":null,\"name\":\"default\",\"queue\":null,\"rules\":null}],\"queues\":[{\"aclAdministerApps\":\"*\",\"aclSubmitApps\":\" \",\"allowPreemptionFrom\":null,\"fairSharePreemptionThreshold\":null,\"fairSharePreemptionTimeout\":null,\"minSharePreemptionTimeout\":null,\"name\":\"root\",\"queues\":[{\"aclAdministerApps\":\"*\",\"aclSubmitApps\":\"*\",\"allowPreemptionFrom\":null,\"fairSharePreemptionThreshold\":null,\"fairSharePreemptionTimeout\":null,\"minSharePreemptionTimeout\":null,\"name\":\"users\",\"queues\":[],\"schedulablePropertiesList\":[{\"impalaDefaultQueryMemLimit\":null,\"impalaDefaultQueryOptions\":null,\"impalaMaxMemory\":null,\"impalaMaxQueuedQueries\":null,\"impalaMaxRunningQueries\":null,\"impalaQueueTimeout\":null,\"maxAMShare\":null,\"maxResources\":null,\"maxRunningApps\":null,\"minResources\":null,\"scheduleName\":\"default\",\"weight\":1.0}],\"schedulingPolicy\":\"drf\",\"type\":\"parent\"}],\"schedulablePropertiesList\":[{\"impalaDefaultQueryMemLimit\":null,\"impalaDefaultQueryOptions\":null,\"impalaMaxMemory\":null,\"impalaMaxQueuedQueries\":null,\"impalaMaxRunningQueries\":null,\"impalaQueueTimeout\":null,\"maxAMShare\":null,\"maxResources\":null,\"maxRunningApps\":null,\"minResources\":null,\"scheduleName\":\"default\",\"weight\":1.0}],\"schedulingPolicy\":\"drf\",\"type\":null}],\"userMaxAppsDefault\":null,\"users\":[]}"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "true"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "true"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "soUbju68U8gtALTEXCEhoq4TsSKS30"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-80f90781a58e5ecb8e16c5b534703130",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ctyvf3szmbo9yp1fcxgw0lh8k"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-05efccc233537e527035c1fa25ca3dc5",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "09f24e99-bdf4-4a84-b9a3-48e4ca60bf39"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "470o8h5sqkbd5gjl592f5m3wo"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-7c2aa0f4555fe7b4e574f3402a03c5e5",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "17fc6344-1315-4fb5-ac5a-9f39d4724a2f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7315wa4ps1n98wfa5xavq4o05"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-8089aa8e7e91a7c21216e299c46b5a5d",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "006226c7-ed0e-4521-940e-69bd6cc0fbfc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e4a9y2pth3ska1at4v7vfbs2x"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-d10daf28e4c2496635eed1ca0b3d6256",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "10431eb1-6684-461f-8a91-329e124a8d53"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e8ufdlucrbz1ktjfn8gykgfpd"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "47"
          }, {
            "name" : "role_jceks_password",
            "value" : "8uxzzyotidhd2k4vrhgfhq7jv"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/mnt/data1/dfs/dn,/mnt/data2/dfs/dn,/mnt/data3/dfs/dn"
          }, {
            "name" : "dfs_datanode_data_dir_perm",
            "value" : "700"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "2642234163"
          }, {
            "name" : "dfs_datanode_failed_volumes_tolerated",
            "value" : "1"
          }, {
            "name" : "dfs_datanode_http_port",
            "value" : "1006"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "dfs_datanode_port",
            "value" : "1004"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/mnt/data3/jn_edits"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/mnt/data1/dfs/nn,/mnt/data2/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/mnt/data2/dfs/snn"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_encrypt_data_transfer_algorithm",
          "value" : "AES/CTR/NoPadding"
        }, {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "BSJqp3E5Ozf4YdDV16DyRImr0TgP03"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "dfs_namenode_acls_enabled",
          "value" : "true"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "kzi8tkhSavnkMifV5824PZuVjCSDFC"
        }, {
          "name" : "hadoop_secure_web_ui",
          "value" : "true"
        }, {
          "name" : "hadoop_security_authentication",
          "value" : "kerberos"
        }, {
          "name" : "hadoop_security_authorization",
          "value" : "true"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "JOawBOIMdjdZ3TkVs4vlrSSwS4fMxw"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-d10daf28e4c2496635eed1ca0b3d6256",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "10431eb1-6684-461f-8a91-329e124a8d53"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-05efccc233537e527035c1fa25ca3dc5",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "09f24e99-bdf4-4a84-b9a3-48e4ca60bf39"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5ql7lg3ikjn8k1o491noqun6u"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-7c2aa0f4555fe7b4e574f3402a03c5e5",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "17fc6344-1315-4fb5-ac5a-9f39d4724a2f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b7138fx1smqu0zkq55lw99sw1"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-8089aa8e7e91a7c21216e299c46b5a5d",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "006226c7-ed0e-4521-940e-69bd6cc0fbfc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "825v2699k6wqycftknek0mh4c"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-d10daf28e4c2496635eed1ca0b3d6256",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "10431eb1-6684-461f-8a91-329e124a8d53"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8lxdairiuu1h3siaoqab3xt8d"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-80f90781a58e5ecb8e16c5b534703130",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9ht7qavrynx1v9e062exu66n1"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cssruvtldwa9phu4oqgskyhmh"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-80f90781a58e5ecb8e16c5b534703130",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ahhkci8288evqs3naztei2u64"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-80f90781a58e5ecb8e16c5b534703130",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/mnt/data2/jn"
          }, {
            "name" : "role_jceks_password",
            "value" : "ehi6fc0826jn759xxwd7484lp"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/mnt/data2/jn"
          }, {
            "name" : "role_jceks_password",
            "value" : "42npdnm819riz9is3b72qwwl1"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-d10daf28e4c2496635eed1ca0b3d6256",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "10431eb1-6684-461f-8a91-329e124a8d53"
        },
        "config" : {
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/mnt/data3/jn"
          }, {
            "name" : "role_jceks_password",
            "value" : "1esm44cwawsynlwaip10ql7wn"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-80f90781a58e5ecb8e16c5b534703130",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "sebnameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "sebnameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "57"
          }, {
            "name" : "role_jceks_password",
            "value" : "m1wck6aiqdha43kpp121osvr"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "sebnameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "sebnameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "50"
          }, {
            "name" : "role_jceks_password",
            "value" : "etsgnbyikci8pm8natp4vqbc7"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    }, {
      "name" : "sentry",
      "type" : "SENTRY",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SENTRY_SERVER",
          "items" : [ {
            "name" : "sentry_server_java_heapsize",
            "value" : "268435456"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "sentry_server_database_host",
          "value" : "sebnnr1n1.sebc.com"
        }, {
          "name" : "sentry_server_database_password",
          "value" : "sentry_passw0rd"
        }, {
          "name" : "sentry_service_admin_group",
          "value" : "hive,impala,hue,solr,mglaserna"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "sentry-GATEWAY-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "sentry-SENTRY_SERVER-cc2b6bc1a832e0baedcabefdbc137971",
        "type" : "SENTRY_SERVER",
        "hostRef" : {
          "hostId" : "i-03400177b8983c507"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "amo58pq1tngchdk5e8c2e4wec"
          } ]
        }
      } ],
      "displayName" : "Sentry"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "10431eb1-6684-461f-8a91-329e124a8d53",
    "ipAddress" : "172.31.13.174",
    "hostname" : "sebdnr1n1.sebc.com",
    "rackId" : "/Rack1",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "006226c7-ed0e-4521-940e-69bd6cc0fbfc",
    "ipAddress" : "172.31.11.127",
    "hostname" : "sebdnr2n2.sebc.com",
    "rackId" : "/Rack1",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "09f24e99-bdf4-4a84-b9a3-48e4ca60bf39",
    "ipAddress" : "172.31.5.60",
    "hostname" : "sebdnr3n3.sebc.com",
    "rackId" : "/Rack2",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "17fc6344-1315-4fb5-ac5a-9f39d4724a2f",
    "ipAddress" : "172.31.15.152",
    "hostname" : "sebdnr4n4.sebc.com",
    "rackId" : "/Rack2",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-03400177b8983c507",
    "ipAddress" : "172.31.8.212",
    "hostname" : "sebnnr1n1.sebc.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "memory_overcommit_threshold",
        "value" : "0.4"
      } ]
    }
  }, {
    "hostId" : "387ae433-857d-4c76-8bda-b9879b23ccdd",
    "ipAddress" : "172.31.6.142",
    "hostname" : "sebnnr2n2.sebc.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__6eea37a4-1722-4ee7-919c-4072b08e335f",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "ecd010a535db6cde8a7a6c1815a15d40bb30c166a1e002b6da93b1542098ad9a",
    "pwSalt" : 6712087025446565276,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-cc2b6bc1a832e0baedcabefdbc137971",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "53e4a249ab98f6525108fc6bd0dbeb6051b3462e588226bca85a2544e7e90c91",
    "pwSalt" : -7859362837767726560,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-80f90781a58e5ecb8e16c5b534703130",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "ada75996c9f2371bb98d1d117c042adc15bea59db3e7069cad2dffb44bdba38d",
    "pwSalt" : -3200914043593847969,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-cc2b6bc1a832e0baedcabefdbc137971",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "f9237d48c30386c3cfdfa464ec97309a06a86a59b04f0463244fdb46a93d1b87",
    "pwSalt" : -1834224515812351034,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-d10daf28e4c2496635eed1ca0b3d6256",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d07dfaa38dee95d304f10dbb280820ff467ae6d5f057a7eb704384072bef6d7e",
    "pwSalt" : -5538713934151483161,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-cc2b6bc1a832e0baedcabefdbc137971",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "81c106eb4053684fcf9a6af9fc679da3af758b20f412d9097f80b615f69a80b6",
    "pwSalt" : -7738012920250939207,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-80f90781a58e5ecb8e16c5b534703130",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "8cf1a6e4a9f508219d6d52b26bd1367aad4cb2989ee87f0f4c7d6780fb471270",
    "pwSalt" : -4975099930275713995,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-cc2b6bc1a832e0baedcabefdbc137971",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "635c8b36b0b1366d16b1ef4bc41bd30f74a4553419e2c6734a51487db46a085f",
    "pwSalt" : -2298703677385504239,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-cc2b6bc1a832e0baedcabefdbc137971",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "7300b07ca182ef500637becae33f3cf134c3b38338e69ca94407219ec16ee7b9",
    "pwSalt" : 7717290048968199022,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "8861fc67765cdd1908cd3298d999e89d267952526b91a3aa91e69f62a5839cb3",
    "pwSalt" : 3076921757733328940,
    "pwLogin" : true
  }, {
    "name" : "mglaserna",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "54b213b936507e96abb5caab9f1266aaa11145b70da9d8d0cb2a1351e80c8b92",
    "pwSalt" : -4618357618695685784,
    "pwLogin" : true
  }, {
    "name" : "minotour",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "ca901386033b7c043f727c6af2315255c23e68c53d32d5b3b9d31b8f613e00a1",
    "pwSalt" : -8920630445238487026,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.3",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20161019-1014",
    "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "sebnnr1n1.sebc.com"
        }, {
          "name" : "firehose_database_name",
          "value" : "amon"
        }, {
          "name" : "firehose_database_password",
          "value" : "amon_passw0rd"
        }, {
          "name" : "firehose_database_user",
          "value" : "amon"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1405091840"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/mnt/disk2/var/lib/cloudera-host-monitor"
        }, {
          "name" : "role_config_suppression_firehose_non_java_memory_validator",
          "value" : "true"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "sebnnr1n1.sebc.com"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_passw0rd"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1405091840"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/mnt/disk2/var/lib/cloudera-service-monitor"
        }, {
          "name" : "role_config_suppression_firehose_non_java_memory_validator",
          "value" : "true"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-cc2b6bc1a832e0baedcabefdbc137971",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "i-03400177b8983c507"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "d9ll325ojc2qyqnwjifva33jm"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-cc2b6bc1a832e0baedcabefdbc137971",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-03400177b8983c507"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "2dfb7vlwtbs5dmxtyov1exub3"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-cc2b6bc1a832e0baedcabefdbc137971",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-03400177b8983c507"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "5qde408q8my0rpdp35s52ydwy"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-cc2b6bc1a832e0baedcabefdbc137971",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-03400177b8983c507"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "853qhv0x4n5mw09ljzai15jby"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-cc2b6bc1a832e0baedcabefdbc137971",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-03400177b8983c507"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "99hltsccibk7jk4zq01qwobkz"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-cc2b6bc1a832e0baedcabefdbc137971",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-03400177b8983c507"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "eaqmcuuss5pgw9bhjr6tjxs33"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "AD_USE_SIMPLE_AUTH",
      "value" : "false"
    }, {
      "name" : "AGENT_TLS",
      "value" : "true"
    }, {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/21/2012 20:10"
    }, {
      "name" : "KDC_ADMIN_PASSWORD",
      "value" : "BQIAAAA3AAEACFNFQkMuQ09NAAxjbG91ZGVyYS1zY20AAAABWKP78gEAFwAQufkXhT49v25oMezOYHJZMA=="
    }, {
      "name" : "KDC_ADMIN_USER",
      "value" : "cloudera-scm@SEBC.COM"
    }, {
      "name" : "KDC_HOST",
      "value" : "sebnnr1n1.sebc.com"
    }, {
      "name" : "KEYSTORE_PASSWORD",
      "value" : "passw0rd"
    }, {
      "name" : "KEYSTORE_PATH",
      "value" : "/opt/cloudera/security/jks/sebnnr1n1.sebc.com.keystore"
    }, {
      "name" : "KRB_DNS_LOOKUP_KDC",
      "value" : "true"
    }, {
      "name" : "KRB_MANAGE_KRB5_CONF",
      "value" : "true"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "http://sebnnr1n1.sebc.com/parcel,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    }, {
      "name" : "SECURITY_REALM",
      "value" : "SEBC.COM"
    }, {
      "name" : "WEB_TLS",
      "value" : "true"
    } ]
  }
}]0;root@sebnnr1n1:~[root@sebnnr1n1 ~]# 

```