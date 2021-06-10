Entenda o que acontece ao produzir registros com `min.insync.replicas` igual à `2`
em um Cluster com apenas um Broker.

# Produzir (novamente)

Agora o cluster é composto por dois brokers.

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --topic 2replicas \
  --replication-factor 2 \
  --config min.insync.replicas=2

kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --producer-property acks=all \
  --topic 2replicas <<EOF
Registro_a
Registro_b
Registro_c
Registro_d
Registro_e
EOF
```{{execute T1}}

Aguarde um momento até a finalização do comando.