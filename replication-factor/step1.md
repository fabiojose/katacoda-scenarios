Criar o tópico com um número customizado de réplicas.

# Criar

Através do argumento `--replication-factor`, o kafka-topics permite a 
definição do número de réplicas desejadas para cada partição.

Este valor está limitado a quantidade de brokers presentes no cluster.

```
kafka-topics.sh --bootstrap-server localhost:9092 \
  --create \
  --topic 2replica \
  --replication-factor 2
```{{execute T1}}

Será exibido um erro similar a este, indicando que a fator de replicação é maior que o número 
de brokers disponíveis.

```
Error while executing topic command : org.apache.kafka.common.errors.InvalidReplicationFactorException: Replication factor: 2 larger than available brokers: 1.
```