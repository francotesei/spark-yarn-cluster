FROM ftesei96/spark-hive-base:1.0.0


##NOTE##
#Spark should be compiled with Hive to be able to use it
#hive-site.xml should be copied to $SPARK_HOME/conf folder

COPY hive-site.xml /opt/hive/conf/hive-site.xml
COPY hive-site.xml /opt/spark/conf/hive-site.xml


CMD ["/opt/hive/bin/hive", "--service", "metastore"]


# docker build -t registryrfsc.azurecr.io/hive-postgresql-metastore-ofertador:0.1.2 .
# docker run -d --net=host --en v-file /opt/yarn-cluster/hadoop-hive.env    --name hive-metastore registryrfsc.azurecr.io/hive-postgresql-metastore-ofertador:0.1.1