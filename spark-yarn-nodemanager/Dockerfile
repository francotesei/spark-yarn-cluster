FROM ftesei96/spark-yarn-base:1.0.0

MAINTAINER Franco Tesei <ftesei96@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:8042/ || exit 1

ADD nodemanager-entrypoint.sh /nodemanager-entrypoint.sh
RUN chmod a+x /nodemanager-entrypoint.sh

EXPOSE 8042

CMD ["/nodemanager-entrypoint.sh"]