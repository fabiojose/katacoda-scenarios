Criar tópico com o mínimo de réplicas em sincronia.

# Criar

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --topic 2minsync \
  --config min.insync.replicas=2
```{{execute T1}}

Aguarde um momento até a finalização do comando.

> Diferente do fator de replicação, o tópico será normalmente criado mesmo que o número
de brokers não for suficiente para manter o mínimo de replicação.