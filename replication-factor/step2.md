Iniciar um novo broker.

# Iniciar 

Depois de iniciado, este novo broker entrará no cluster e será considerado para
a customização no fator de replicação.

```bash
kafka-server-start.sh $KAFKA_HOME/config/server.properties \    
  --override broker.id=21 \
  --override log.dirs=/tmp/broker21-logs \
  --override listeners=PLAINTEXT://:29092
```{{execute T2}}

Isto deverá ser exibido, indicando que o broker está funcional:

```
TODO
```