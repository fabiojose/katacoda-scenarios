Cria seu Tópico com a política de limpeza desejada. 

# Criar

Através do argumento `--config`, o kafka-topics permite a definição valores customizados para
cada uma das configurações que um Tópico possue.

Neste caso `max.message.bytes` com o limite de 300 kilobytes por registro.

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --topic lote300kib \
  --config max.message.bytes=307200 \
  --config cleanup.policy=delete
```{{execute}}

Aguarde um momento até a finalização do comando.