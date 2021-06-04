Produz eventos com chave de partição, o metadado `key` no Registro.

# Teste: registros com a chave de partição

```
kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --topic compactar \
  --property "parse.key=true" \
  --property "key.separator=|" <<EOF
a|Registro_a_1-fica
b|Registro_b_1
c|Registro_c_1
b|Registro_b_2-fica
c|Registro_c_2-fica
d|Registro_d_1
e|Registro_e_1-fica
d|Registro_d_2-fica
EOF
```{{execute}}

Aguarde um momento até finalizar a produção dos registros.
