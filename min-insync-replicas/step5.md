Descreva o tópico para entender como está a configuração das partições.

# Descrever

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
--describe \
--topic 2replicas
```{{execute T1}}

Isto deverá ser exibido, indicando que o Tópico foi encontrado:

```
TODO
```