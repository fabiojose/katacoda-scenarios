Alterar configuração diretamente no Apache Kafka®.

# Apache Kafka®

Também é possível modificar configurações diretamente pelo Apache Kafka®. Esta é a forma
recomendada, já que no futuro o Cluster será totalmente autônomo.

# KAFKA 2.4 não suporta alter pelo broker

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
--alter \
--topic topico-alterar \
--config cleanup.policy=compact
```{{execute}}