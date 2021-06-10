Agora o cluster possui dois brokers e pode-se customizar o fator de replicação.

# Criar

Então, pode-se criar um tópico com `--replication-factor` igual a `2`.

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --topic 2replica \
  --replication-factor 2
```{{execute T2}}

Aguarde um momento até a finalização do comando.
