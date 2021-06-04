Cria seu Tópico com número necessário de Partições

# Criar

Através do argumento `--partitions`, o kafka-topics processa a criação de um novo tópico com 
o número desejado de partitions.

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --topic topico-sete \
  --partitions 7 \
```{{execute}}
