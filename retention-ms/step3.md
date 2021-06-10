Consumer os eventos.

# Consumir

O comando `kafka-console-consumer` faz parte do Kafka CLI e permite consumir eventos de um tópico
e apresentá-los no terminal.

```bash
kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic 2minutos \
  --from-beginning
```{{execute}}

Isto deverá ser exibido, indicando que os registro foram consumidos:

```
Registro_0
Registro_1
Registro_2
Registro_3
Registro_4
```

Teclar `CTRL+c` para finalizar o consumo:

`^C`{{execute ctrl-seq}}
