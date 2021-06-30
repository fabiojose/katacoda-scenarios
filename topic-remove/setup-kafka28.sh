#!/bin/bash

echo "done" | sudo tee /root/katacoda-finished

export KAFKA_HOME=/root/kafka_2.12-2.8.0
export PATH=$PATH:$KAFKA_HOME/bin

# Download
curl 'https://downloads.apache.org/kafka/2.8.0/kafka_2.12-2.8.0.tgz' -o kafka.tgz

# Extract
tar -xvzf kafka.tgz

# Start zookeeper
zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties&
sleep 5

# Start Broker
kafka-server-start.sh $KAFKA_HOME/config/server.properties \
--override broker.id=1 \
--override log.dirs=/tmp/broker1-logs \
--override listeners=PLAINTEXT://:9092 \
--override zookeeper.connect=localhost:2181 \
--override zookeeper.connection.timeout.ms=10000&
sleep 5

echo "done" >> /root/katacoda-background-finished
