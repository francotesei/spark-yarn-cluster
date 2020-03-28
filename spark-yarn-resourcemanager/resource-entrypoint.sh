#!/bin/bash
if [ "$ENABLE_LIVY_SERVER" == "true" ]; then
  echo "#################### LIVY SERVER ENABLED ###################"
/livy-run.sh &
else
echo "#################### LIVY SERVER DISABLED ###################"
fi
echo "#################### ######################### ###################"
$HADOOP_HOME/bin/yarn --config $HADOOP_CONF_DIR resourcemanager

