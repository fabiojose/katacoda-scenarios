Produz eventos __sem__ a chave de partição, o que é proibido ao definir `cleanup.policy` igual a
`compact` no Tópico.

# Teste: registros s/ a chave de partição

```
kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --topic compactar <<EOF
Registro sem Chave (key)
EOF
```{{execute}}

Uma mensagem como esta será exibida, indicando que não foi possível enviar o Registro:

```
ERROR Error when sending message to topic compactar with key: null, value: 24 bytes with error: (org.apache.kafka.clients.producer.internals.ErrorLoggingCallback)
org.apache.kafka.common.InvalidRecordException: One or more records have been rejected
```