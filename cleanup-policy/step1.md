Cria seu Tópico com a política de limpeza desejada. 

# Criar

Através do argumento `--config`, o kafka-topics permite a definição valores customizados para
cada uma das configurações que um Tópico possue.

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --partitions 1 \
  --topic compactar \
  --config segment.ms=10000 \
  --config cleanup.policy=compact
```{{execute}}

Aguarde um momento até a finalização do comando.