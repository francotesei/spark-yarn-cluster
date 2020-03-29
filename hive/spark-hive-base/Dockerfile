FROM ftesei96/spark-yarn-base:1.0.0

MAINTAINER Franco Tesei ftesei96@gmail.com

ENV HIVE_VERSION=3.1.2

ENV HIVE_HOME /opt/hive
ENV PATH $HIVE_HOME/bin:$PATH
ENV HADOOP_HOME /opt/hadoop-$HADOOP_VERSION

WORKDIR /opt


RUN apt-get update && apt-get install -y wget procps && \
	wget https://archive.apache.org/dist/hive/hive-$HIVE_VERSION/apache-hive-$HIVE_VERSION-bin.tar.gz && \
	tar -xzvf apache-hive-$HIVE_VERSION-bin.tar.gz && \
	mv apache-hive-$HIVE_VERSION-bin hive && \
	wget https://jdbc.postgresql.org/download/postgresql-9.4.1212.jar -O $HIVE_HOME/lib/postgresql-jdbc.jar && \
	rm apache-hive-$HIVE_VERSION-bin.tar.gz && \
	apt-get --purge remove -y wget && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

#Defaults configurations
ADD defaults-conf/hive-site.xml $HIVE_HOME/conf
ADD defaults-conf/beeline-log4j2.properties $HIVE_HOME/conf
ADD defaults-conf/hive-env.sh $HIVE_HOME/conf
ADD defaults-conf/hive-exec-log4j2.properties $HIVE_HOME/conf
ADD defaults-conf/hive-log4j2.properties $HIVE_HOME/conf
ADD defaults-conf/ivysettings.xml $HIVE_HOME/conf
ADD defaults-conf/llap-daemon-log4j2.properties $HIVE_HOME/conf

COPY base-run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/base-run.sh

COPY base-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/base-entrypoint.sh

EXPOSE 10000
EXPOSE 10002

ENTRYPOINT ["base-entrypoint.sh"]
CMD ["base-run.sh"]


##NOTE##
#Spark should be compiled with Hive to be able to use it
#hive-site.xml should be copied to $SPARK_HOME/conf folder