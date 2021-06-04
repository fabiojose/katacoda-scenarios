Detalha seu Tópico.

# Detalhar

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --describe \
  --topic meu-primeiro-topico
```{{execute}}

Isto deverá ser exibido, indicando que o tópico foi encontrado:

```
Topic: meu-primeiro-topico      TopicId: _GScDwhQSleKZQvj5XWMrA PartitionCount: 1       ReplicationFactor: 1    Configs: segment.bytes=1073741824
        Topic: meu-primeiro-topico      Partition: 0    Leader: 1       Replicas: 1     Isr: 1
```