Detalha seu Tópico para verificar se as configurações customizadas foram aplicadas.

# Detalhar

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --describe \
  --topic compactar
```{{execute}}

Isto deverá ser exibido, indicando que o Tópico foi encontrado:

```
Topic: topico-sete      TopicId: 6S2tIJ3vRWio-72gMnMvlA PartitionCount: 1       ReplicationFactor: 1    Configs: segment.bytes=1073741824 segment.ms=10000 cleanup.policy=compact
        Topic: compactar      Partition: 0    Leader: 1       Replicas: 1     Isr: 1
```