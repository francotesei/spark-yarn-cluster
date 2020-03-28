FROM ftesei96/spark-yarn-base:1.0.0

MAINTAINER Franco Tesei <ftesei96@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:9870/ || exit 1

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

ADD namenode-run.sh /namenode-run.sh
RUN chmod a+x /namenode-run.sh

EXPOSE 9870

CMD ["/namenode-run.sh"]


#RUN apt-get install wget -y && wget https://www-eu.apache.org/dist/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz 
#RUN tar -xvf spark-2.4.3-bin-hadoop2.7.tgz && mv spark-2.4.3-bin-hadoop2.7 /opt/spark
#RUN export LD_LIBRARY_PATH=/opt/hadoop-3.1.1/lib/native$LD_LIBRARY_PATH 
#RUN export HADOOP_CONF_DIR=/opt/hadoop-3.1.1/etc/hadoop
#RUN export SPARK_HOME=/opt/spark/
#RUN cp /opt/spark/conf/spark-defaults.conf.template /opt/spark/conf/spark-defaults.conf


#docker build -t registryrfsc.azurecr.io/spark-yarn-namenode-ofertador: .


#docker run -d --net=host --env-file /opt/yarn-cluster/hadoop.env -e CLUSTER_NAME=ofertador -v /opt/yarn-cluster/namenode:/hadoop/dfs/name  registryrfsc.azurecr.io/spark-yarn-namenode-ofertador