Iniciar o Apache Kafka® com apenas um Broker.

# Zookeeper

O Zookeeper é responsável pelo gerenciamento do Cluster e metadados dos Tópicos.

`zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties`{{execute T1}}

# Broker

```kafka-server-start.sh $KAFKA_HOME/config/server.properties \    
--override broker.id=30 \   
--override log.dirs=/tmp/broker30-logs \    
--override listeners=PLAINTEXT://:9092 \                         
--override zookeeper.connect=localhost:2181 \                
--override zookeeper.connection.timeout.ms=10000```{{execute T2}}