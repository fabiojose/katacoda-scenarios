Produzir registros que respeitam o limite. 

# Testar o limite

Produzindo lotes de registros com no máximo `300KiB`.

```
kafka-producer-perf-test.sh \
  --topic lote300kib \
  --num-records 5 \
  --record-size 51200 \
  --throughput -1 \
  --producer-props \
      acks=1 \
      bootstrap.servers=localhost:9092 \
      batch.size=307200
```{{execute}}

Aguarde um momento até a finalização do comando.
