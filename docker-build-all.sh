#!/bin/bash
echo "============================================================="
echo "Docker build image spark-yarn-base"
docker build -t ftesei96/spark-yarn-base:1.0.0 ./spark-yarn-base/
echo "Done spark-yarn-base"
echo "============================================================="
echo "Docker build image spark-yarn-namenode"
docker build -t ftesei96/spark-yarn-namenode:1.0.0 ./spark-yarn-namenode/
echo "Done spark-yarn-namenode"
echo "============================================================="
echo "Docker build image spark-yarn-datanode"
docker build -t ftesei96/spark-yarn-datanode:1.0.0 ./spark-yarn-datanode/
echo "Done spark-yarn-datanode"
echo "============================================================="
echo "Docker build image spark-yarn-resourcemanager"
docker build -t ftesei96/spark-yarn-resourcemanager:1.0.0 ./spark-yarn-resourcemanager/
echo "Done spark-yarn-resourcemanager"
echo "============================================================="
echo "Docker build image spark-yarn-nodemanager"
docker build -t ftesei96/spark-yarn-nodemanager:1.0.0 ./spark-yarn-nodemanager/
echo "Done spark-yarn-nodemanager"
echo "============================================================="
echo "Docker build image spark-yarn-historyserver"
docker build -t ftesei96/spark-yarn-historyserver:1.0.0 ./spark-yarn-historyserver/
echo "Done spark-yarn-historyserver"
echo "============================================================="
echo "Docker build image spark-hive-base"
docker build -t ftesei96/spark-hive-base:1.0.0 ./hive/spark-hive-base/
echo "Done spark-hive-base"
echo "============================================================="
echo "Docker build image spark-hive-metastore"
docker build -t ftesei96/spark-hive-metastore:1.0.0 ./hive/spark-hive-metastore/
echo "Done spark-hive-metastore"
echo "============================================================="
echo "Docker build image spark-hive-server"
docker build -t ftesei96/spark-hive-server:1.0.0 ./hive/spark-hive-server/
echo "Done spark-hive-server"
echo "============================================================="
echo "Docker build image spark-hive-postgresql"
docker build -t ftesei96/spark-hive-postgresql:1.0.0 ./hive/spark-hive-postgresql/
echo "Done spark-hive-postgresql"
echo "============================================================="
echo "Docker build image spark-yarn-zeppelin"
docker build -t ftesei96/spark-yarn-zeppelin:1.0.0 ./hive/spark-yarn-zeppelin/
echo "Done spark-yarn-zeppelin"
echo "============================================================="
