Alterar configuração através do Zookeeper

# Zookeeper

Até que a versão 3.0.0 do Apache Kafka® seja lançada, é possível modificar configurações do Tópico
diretamente pelo Zookeeper.

```
cd /root/kafka
bin/kafka-topics.sh --zookeeper localhost:2181 \
--alter \
--topic topico-alterar \
--config segment.ms=10000
```{{execute}}