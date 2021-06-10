Descreva o tópico para entender como está a configuração das partições.

# Descrever

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
--describe \
--topic 2replicas
```{{execute T1}}

Isto deverá ser exibido, indicando que o Tópico foi encontrado:

```
Topic: 2replicas        PartitionCount: 1       ReplicationFactor: 2    Configs: min.insync.replicas=2,segment.bytes=1073741824
        Topic: 2replicas        Partition: 0    Leader: 9       Replicas: 9,0   Isr: 9,0
```

O destaque vai para `Configs: min.insync.replicas=2`, indicando que está como o desejado.
