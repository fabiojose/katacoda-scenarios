Entenda o que acontece ao produzir registros com `min.insync.replicas` igual à `2`
em um Cluster com apenas um Broker.

# Produzir

```
kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --producer-property acks=all \
  --topic 2minsync <<EOF
Registro_a
Registro_b
Registro_c
Registro_d
Registro_e
EOF
```{{execute T1}}

Um erro como este deverá ser exibido, indicando que algo está errado na replicação dos registros produzidos e por isso todos foram rejeitados.

```
org.apache.kafka.common.errors.NotEnoughReplicasException: Messages are rejected since there are fewer in-sync replicas than required.
```