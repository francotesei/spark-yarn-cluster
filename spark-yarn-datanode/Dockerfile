FROM ftesei96/spark-yarn-base:1.0.0

MAINTAINER Franco Tesei <ftesei96@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:9864/ || exit 1

ENV HDFS_CONF_dfs_datanode_data_dir=file:///hadoop/dfs/data
RUN mkdir -p /hadoop/dfs/data
VOLUME /hadoop/dfs/data

ADD datanode-entrypoint.sh /datanode-entrypoint.sh
RUN chmod a+x /datanode-entrypoint.sh

EXPOSE 9864

CMD ["/datanode-entrypoint.sh"]