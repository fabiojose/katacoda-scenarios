Aumentar o número de partições.

# Modificar

Serão criadas mais quatro partições, porque ele já possui uma.

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
--alter \
--topic topico-alterar \
--partitions 5
```{{execute}}
