FROM ftesei96/spark-hive-base:1.0.0

##NOTE##
#Spark should be compiled with Hive to be able to use it
#hive-site.xml should be copied to $SPARK_HOME/conf folder
COPY hive-site.xml /opt/hive/conf/hive-site.xml
COPY hive-site.xml /opt/spark/conf/hive-site.xml
ENV HIVE_CORE_CONF_javax_jdo_option_ConnectionURL: "jdbc:postgresql://hive-metastore/metastore"

# docker build -t registryrfsc.azurecr.io/hive-server-ofertador:0.1.0 .
# docker run -d --net=host --env-file /opt/yarn-cluster/hadoop-hive.env -e HIVE_CORE_CONF_javax_jdo_option_ConnectionURL=jdbc:postgresql://hive-metastore/metastore   --name hive-server registryrfsc.azurecr.io/hive-server-ofertador:0.1.0