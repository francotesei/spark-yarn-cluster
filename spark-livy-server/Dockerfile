FROM ftesei96/spark-yarn-base:1.0.0

ENV LIVY_VERSION 0.6.0
ENV LIVY_URL https://www-us.apache.org/dist/incubator/livy/$LIVY_VERSION-incubating/apache-livy-$LIVY_VERSION-incubating-bin.zip
RUN apt-get update -y
RUN apt-get install  -y zip

RUN set -x \
    && curl -fSL "$LIVY_URL" -o /tmp/livy.zip \
    && unzip /tmp/livy.zip -d /opt/ \
    && rm /tmp/livy.zip*

RUN mv /opt/apache-livy-$LIVY_VERSION-incubating-bin /opt/livy
ENV LIVY_SERVER_HOME /opt/livy
ENV LIVY_CONF_DIR $LIVY_SERVER_HOME/conf

ADD livy.conf $LIVY_CONF_DIR/livy.conf
ADD livy-entrypoint.sh /livy-entrypoint.sh
EXPOSE 8998
RUN chmod a+x /livy-entrypoint.sh
RUN chmod a+x $LIVY_SERVER_HOME/bin/livy-server
ENTRYPOINT ["/livy-entrypoint.sh"]