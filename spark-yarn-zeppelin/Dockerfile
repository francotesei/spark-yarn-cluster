FROM ftesei96/spark-yarn-base:1.0.0


ENV ZEPPELIN_VERSION 0.9.0-preview1

ENV ZEPPELIN_URL https://downloads.apache.org/zeppelin/zeppelin-$ZEPPELIN_VERSION/zeppelin-$ZEPPELIN_VERSION-bin-all.tgz


RUN set -x \
    && curl -fSL "$ZEPPELIN_URL" -o /tmp/zeppelin.tgz \
    && tar -xvf /tmp/zeppelin.tgz -C /opt/ \
    && rm /tmp/zeppelin.tgz*


ENV ZEPPELIN_HOME=/opt/zeppelin-$ZEPPELIN_VERSION-bin-all

#ENV ZEPPELIN_LOG_DIR=/logs
#ENV ZEPPELIN_NOTEBOOK_DIR=/notebook

COPY zeppelin-site.xml $ZEPPELIN_HOME/conf/zeppelin-site.xml

EXPOSE 8080

COPY zeppelin-entrypoint.sh /zeppelin-entrypoint.sh

RUN chmod a+x /zeppelin-entrypoint.sh

CMD ["./zeppelin-entrypoint.sh"]