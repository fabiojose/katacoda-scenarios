Produzir eventos com tamanho idêntico ao limite.

# Testar

Produzindo registros que possuem tamanho exatamente igual ao limite do Tópico. 

```
kafka-producer-perf-test.sh \
  --topic lote300kib \
  --num-records 7 \
  --record-size 307200 \
  --throughput -1 \
  --producer-props \
      acks=1 \
      bootstrap.servers=localhost:9092 \
      batch.size=307200
```{{execute}}

Uma saída como esta deverá ser exibida, indicando que tudo está correto:

```
org.apache.kafka.common.errors.RecordTooLargeException: The request included a message larger than the max message size the server will accept.
org.apache.kafka.common.errors.RecordTooLargeException: The request included a message larger than the max message size the server will accept.
org.apache.kafka.common.errors.RecordTooLargeException: The request included a message larger than the max message size the server will accept.
org.apache.kafka.common.errors.RecordTooLargeException: The request included a message larger than the max message size the server will accept.
org.apache.kafka.common.errors.RecordTooLargeException: The request included a message larger than the max message size the server will accept.
org.apache.kafka.common.errors.RecordTooLargeException: The request included a message larger than the max message size the server will accept.
org.apache.kafka.common.errors.RecordTooLargeException: The request included a message larger than the max message size the server will accept.
7 records sent, 24,390244 records/sec (7,15 MB/sec), 57,43 ms avg latency, 271,00 ms max latency, 22 ms 50th, 271 ms 95th, 271 ms 99th, 271 ms 99.9th.
```