Visualizar modificações.

# Descrever

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
--describe \
--topic topico-alterar
```{{execute}}

Serão descritas:

- cinco partições
- `cleanup.policy=compact`
- `segment.ms=10000`