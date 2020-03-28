FROM ftesei96/spark-yarn-base:1.0.0

MAINTAINER Franco Tesei <ftesei96@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:8188/ || exit 1

ENV YARN_CONF_yarn_timeline___service_leveldb___timeline___store_path=/hadoop/yarn/timeline
RUN mkdir -p /hadoop/yarn/timeline
VOLUME /hadoop/yarn/timeline

ADD history-entrypoint.sh /history-entrypoint.sh
RUN chmod a+x /history-entrypoint.sh

EXPOSE 8188

CMD ["/history-entrypoint.sh"]

#registryrfsc.azurecr.io/spark-yarn-historyserver-ofertador

#docker run -d --net=host --env-file /opt/yarn-cluster/hadoop.env -v /opt/yarn-cluster/historyserver:/hadoop/yarn/timeline registryrfsc.azurecr.io/spark-yarn-historyserver-ofertador
