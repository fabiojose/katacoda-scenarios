Alterar configuração diretamente no Apache Kafka®.

# Apache Kafka®

Também é possível modificar configurações diretamente pelo Apache Kafka®. Esta é a forma
recomendada, já que no futuro o Cluster será totalmente autônomo.

```
kafka-configs.sh --bootstrap-server localhost:9092 \
--alter \
--entity-type topics \
--entity-name topico-alterar \
--add-config cleanup.policy=compact
```{{execute}}