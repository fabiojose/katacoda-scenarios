Publicar eventos.

# Publicar

O comando `kafka-console-producer` faz parte do Kafka CLI e ajuda no teste da publicação de
eventos em texto plano - _plain text_.

```bash
kafka-console-producer.sh \
  --bootstrap-server localhost:9092 \
  --topic 2minutos \ <<EOF
Registro_0
Registro_1
Registro_2
Registro_3
Registro_4
EOF
```{{execute}}

Aguarde algum tempo para finalização da produção no tópico.

