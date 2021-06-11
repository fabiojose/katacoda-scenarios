Cria seu Tópico com a retenção e segmentação customizados. 

# Criar

Através do argumento `--config`, o kafka-topics permite a definição valores customizados para
cada uma das configurações que um Tópico possue.

Neste caso `retention.ms` o define a retenção mínima de vinte segundos. E `segment.ms` define
segmentação a cada três segundos.

```bash
kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --partitions 1 \
  --topic 20segundos \
  --config segment.ms=3000 \
  --config retention.ms=20000 \
  --config cleanup.policy=delete
```{{execute}}

Aguarde um momento até a finalização do comando.