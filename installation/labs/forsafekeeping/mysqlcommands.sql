#Database commands and create tables

create database rman DEFAULT CHARACTER SET utf8;
create database amon DEFAULT CHARACTER SET utf8;
create database sqoop DEFAULT CHARACTER SET utf8;;
create database metas DEFAULT CHARACTER SET utf8;;
create database scm DEFAULT CHARACTER SET utf8;
create database hue DEFAULT CHARACTER SET utf8;
create database oozie DEFAULT CHARACTER SET utf8;

grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_passw0rd';
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_passw0rd';
grant all on metas.* TO 'metas'@'%' IDENTIFIED BY 'metas_passw0rd';
grant all on scm.* TO 'scm'@'%' IDENTIFIED BY 'scm_passw0rd';
grant all on hue.* TO 'hue'@'%' IDENTIFIED BY 'hue_passw0rd';
grant all on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'oozie_passw0rd';


GRANT REPLICATION SLAVE ON *.* TO 'replication'@'sebnnr2n2.sebc.com' IDENTIFIED BY 'replication1234';
mysql_binary_log.000004

CHANGE MASTER TO MASTER_HOST='sebnnr1n1.sebc.com', MASTER_USER='replication', MASTER_PASSWORD='replication1234', MASTER_LOG_FILE='mysql_binary_log.000004', MASTER_LOG_POS=282;

GRANT REPLICATION SLAVE ON *.* TO 'replication'@'sebnnr2n2.sebc.com' IDENTIFIED BY 'replication1234';
mysql_binary_log.000004

CHANGE MASTER TO MASTER_HOST='sebnnr1n1.sebc.com', MASTER_USER='replication', MASTER_PASSWORD='replication1234', MASTER_LOG_FILE='mysql_binary_log.000004', MASTER_LOG_POS=282;

