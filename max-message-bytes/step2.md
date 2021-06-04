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

Uma saída como esta deverá ser exibida, indicando que tudo está correto:

```
5 records sent, 11,467890 records/sec (0,56 MB/sec), 105,80 ms avg latency, 428,00 ms max latency, 25 ms 50th, 428 ms 95th, 428 ms 99th, 428 ms 99.9th.
```