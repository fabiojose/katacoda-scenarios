Detalhar o tópico para visualizar o número de réplicas

# Descrever

O argumento `--describe` lista todos os detalhes do tópico. 

```
cd /root/kafka
bin/kafka-topics.sh --bootstrap-server localhost:9092 \
  --describe \
  --topic 2replica
```{{execute T2}}

Isto deverá ser exibido, indicando que o tópico foi encontrado:

```
TODO
```
