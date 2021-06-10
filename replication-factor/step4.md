Detalhar o tópico para visualizar o número de réplicas

# Descrever

O argumento `--describe` lista todos os detalhes do tópico. 

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
  --describe \
  --topic 2replica
```{{execute T2}}

Isto deverá ser exibido, indicando que o tópico foi encontrado:

```
Topic: 2replica PartitionCount: 1       ReplicationFactor: 2    Configs: segment.bytes=1073741824
        Topic: 2replica Partition: 0    Leader: 0       Replicas: 0,9   Isr: 0,9
```

- `Replicas: 0,9`: indica que existem duas réplicas, uma no broker `0` e outra no broker de 
identificador `9` que foi iniciado nos passos anteriores.
- `Isr: 0,9`: indica que todas as réplicas estão sincronizadas 