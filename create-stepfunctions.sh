#!/bin/bash

echo "Criando Step Functions ProcessamentoDePedidos..."

aws --endpoint-url=http://localhost:4566 stepfunctions create-state-machine \
--name ProcessamentoDePedidos \
--role-arn arn:aws:iam::000000000000:role/stepfunctions-execution-role \
--definition file://stepfunctions-definition.json \
--region us-east-1

echo "Step Functions criado com sucesso!"
