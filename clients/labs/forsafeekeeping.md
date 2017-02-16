```
 export HUE_CONF_DIR="/var/run/cloudera-scm-agent/process/`ls -1 /var/run/cloudera-scm-agent/process | grep HUE | sort -n | tail -1 `"
export JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
export PATH=$JAVA_HOME/bin:$PATH
export HUE_SECRET_KEY=passw0rd #hue admin passw0rd
HUE_IGNORE_PASSWORD_SCRIPT_ERRORS=1 ;HUE_DATABASE_PASSWORD=hue_passw0rd ;/opt/cloudera/parcels/CDH/lib/hue/build/env/bin/hue useradmin_sync_with_unix


```