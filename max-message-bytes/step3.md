Produzir eventos que ultrapassam o limite estabelicido.

# Ultrapassar o limite

Produzindo lotes de registros com o tamanho de `400KiB`, que é superior ao limite estabelecido.

```
kafka-producer-perf-test.sh \
  --topic lote300kib \
  --num-records 7 \
  --record-size 51200 \
  --throughput -1 \
  --producer-props \
      acks=1 \
      bootstrap.servers=localhost:9092 \
      batch.size=409600
```{{execute}}


Será exibido um erro similar a este, indicando que o limite máximo foi ultrapassado:

```
WARN [Producer clientId=producer-1] Got error produce response in correlation id 1258 on topic-partition lote300kib-0, splitting and retrying (2147483647 attempts left). Error: MESSAGE_TOO_LARGE (org.apache.kafka.clients.producer.internals.Sender)
```

Utilize `CTRL+c` para interromper as mensagens de erro:

`^C`{{execute ctrl-seq}}

