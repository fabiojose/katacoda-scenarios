Cria seu primeiro Tópico

# Criar

Através do argumento `--create`, o kafka-topics processa a criação de um novo tópico.

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
--create \
--topic topico-alterar \
--partitions 1
```{{execute}}