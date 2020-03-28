FROM ftesei96/spark-yarn-base:1.0.0

MAINTAINER Franco Tesei <ftesei96@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:8088/ || exit 1


### START LIVY SERVER ###

ENV LIVY_VERSION 0.7.0

ENV LIVY_URL https://www-us.apache.org/dist/incubator/livy/$LIVY_VERSION-incubating/apache-livy-$LIVY_VERSION-incubating-bin.zip

RUN set -x \
    && curl -fSL "$LIVY_URL" -o /tmp/livy.zip \
    && unzip /tmp/livy.zip -d /opt/ \
    && rm /tmp/livy.zip*

RUN mv /opt/apache-livy-$LIVY_VERSION-incubating-bin /opt/livy

ENV LIVY_SERVER_HOME /opt/livy
ENV LIVY_CONF_DIR $LIVY_SERVER_HOME/conf

ADD livy-server/livy.conf $LIVY_CONF_DIR/livy.conf
ADD livy-server/livy-run.sh /livy-run.sh

RUN chmod a+x /livy-run.sh
RUN chmod a+x $LIVY_SERVER_HOME/bin/livy-server

ENV ENABLE_LIVY_SERVER=false
EXPOSE 8998

### END LIVY SERVER ###

ADD resource-entrypoint.sh /resource-entrypoint.sh
RUN chmod a+x /resource-entrypoint.sh


EXPOSE 8088

CMD ["/resource-entrypoint.sh"]

#RUN apt-get install wget -y && wget https://www-eu.apache.org/dist/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz 
#RUN tar -xvf spark-2.4.3-bin-hadoop2.7.tgz && mv spark-2.4.3-bin-hadoop2.7 /opt/spark
##RUN export LD_LIBRARY_PATH=/opt/hadoop-3.1.1/lib/native$LD_LIBRARY_PATH 
#RUN export HADOOP_CONF_DIR=/opt/hadoop-3.1.1/etc/hadoop
#RUN export SPARK_HOME=/opt/spark/
#RUN cp /opt/spark/conf/spark-defaults.conf.template /opt/spark/conf/spark-defaults.conf

#docker build -t registryrfsc.azurecr.io/spark-yarn-resourcemanager-ofertador

#docker run -d --net=host --env-file /opt/yarn-cluster/hadoop.env   registryrfsc.azurecr.io/spark-yarn-resourcemanager-ofertador



## para history server de spark 
## 1. hdfs dfs -mkdir /spark-logs

# 2. $SPARK_HOME/sbin/start-history-server.sh