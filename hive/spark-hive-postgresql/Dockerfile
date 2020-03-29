FROM postgres:9.5.3

MAINTAINER "Franco ftesei96@gmail.com"

COPY scripts/hive-schema-2.3.0.postgres.sql /hive/hive-schema-2.3.0.postgres.sql
COPY scripts/hive-txn-schema-2.3.0.postgres.sql /hive/hive-txn-schema-2.3.0.postgres.sql
COPY scripts/upgrade-2.3.0-to-3.0.0.postgres.sql /hive/upgrade-2.3.0-to-3.0.0.postgres.sql
COPY scripts/upgrade-3.0.0-to-3.1.0.postgres.sql /hive/upgrade-3.0.0-to-3.1.0.postgres.sql
##NOTE##
#Spark should be compiled with Hive to be able to use it
#hive-site.xml should be copied to $SPARK_HOME/conf folder
COPY hive-site.xml /opt/hive/conf/hive-site.xml
COPY hive-site.xml /opt/spark/conf/hive-site.xml
COPY init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh


