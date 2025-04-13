#!/bin/bash

echo "Executando Step Functions ProcessamentoDePedidos..."

aws --endpoint-url=http://localhost:4566 stepfunctions start-execution \
--state-machine-arn arn:aws:states:us-east-1:000000000000:stateMachine:ProcessamentoDePedidos \
--input '{"PedidoId": "001", "Cliente": "Thiago Adriano"}' \
--region us-east-1

