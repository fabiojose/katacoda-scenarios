Detalha seu Tópico para verificar se as partições foram criadas.

# Detalhar

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --describe \
  --topic topico-sete
```{{execute}}

Isto deverá ser exibido, indicando que o tópico foi encontrado:

```
Topic: topico-sete      TopicId: 6S2tIJ3vRWio-72gMnMvlA PartitionCount: 7       ReplicationFactor: 1    Configs: segment.bytes=1073741824
        Topic: topico-sete      Partition: 0    Leader: 1       Replicas: 1     Isr: 1
        Topic: topico-sete      Partition: 1    Leader: 1       Replicas: 1     Isr: 1
        Topic: topico-sete      Partition: 2    Leader: 1       Replicas: 1     Isr: 1
        Topic: topico-sete      Partition: 3    Leader: 1       Replicas: 1     Isr: 1
        Topic: topico-sete      Partition: 4    Leader: 1       Replicas: 1     Isr: 1
        Topic: topico-sete      Partition: 5    Leader: 1       Replicas: 1     Isr: 1
        Topic: topico-sete      Partition: 6    Leader: 1       Replicas: 1     Isr: 1
```