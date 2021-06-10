Iniciar um novo broker.

# Iniciar 

Depois de iniciado, este novo broker entrará no cluster e será considerado para
a customização no fator de replicação.

```
kafka-server-start.sh $KAFKA_HOME/config/server.properties \
  --override broker.id=9 \
  --override log.dirs=/tmp/broker9-logs \
  --override listeners=PLAINTEXT://:29092
```{{execute T2':w}}

- `--override broker.id=9`: este novo broker terá o identificador `9`

Isto deverá ser exibido, indicando que o broker foi iniciado com sucesso:

```
INFO [SocketServer brokerId=9] Started data-plane processors for 1 acceptors (kafka.network.SocketServer)
INFO Kafka version: 2.4.0 (org.apache.kafka.common.utils.AppInfoParser)
INFO Kafka commitId: 77a89fcf8d7fa018 (org.apache.kafka.common.utils.AppInfoParser)
INFO Kafka startTimeMs: 1623196430692 (org.apache.kafka.common.utils.AppInfoParser)
INFO [KafkaServer id=9] started (kafka.server.KafkaServer)
```