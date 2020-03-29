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
