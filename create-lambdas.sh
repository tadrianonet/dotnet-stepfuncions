#!/bin/bash

echo "Criando Lambda LambdaReceberPedido"
aws --endpoint-url=http://localhost:4566 lambda create-function \
--function-name LambdaReceberPedido \
--runtime dotnet8 \
--handler LambdaReceberPedido::LambdaReceberPedido.Function::FunctionHandler \
--role arn:aws:iam::000000000000:role/lambda-role \
--zip-file fileb://LambdaReceberPedido/src/LambdaReceberPedido/deploy.zip \
--region us-east-1

echo "Criando Lambda LambdaValidarPedido"
aws --endpoint-url=http://localhost:4566 lambda create-function \
--function-name LambdaValidarPedido \
--runtime dotnet8 \
--handler LambdaValidarPedido::LambdaValidarPedido.Function::FunctionHandler \
--role arn:aws:iam::000000000000:role/lambda-role \
--zip-file fileb://LambdaValidarPedido/src/LambdaValidarPedido/deploy.zip \
--region us-east-1

echo "Criando Lambda LambdaProcessarPagamento"
aws --endpoint-url=http://localhost:4566 lambda create-function \
--function-name LambdaProcessarPagamento \
--runtime dotnet8 \
--handler LambdaProcessarPagamento::LambdaProcessarPagamento.Function::FunctionHandler \
--role arn:aws:iam::000000000000:role/lambda-role \
--zip-file fileb://LambdaProcessarPagamento/src/LambdaProcessarPagamento/deploy.zip \
--region us-east-1

echo "Criando Lambda LambdaEnviarPedido"
aws --endpoint-url=http://localhost:4566 lambda create-function \
--function-name LambdaEnviarPedido \
--runtime dotnet8 \
--handler LambdaEnviarPedido::LambdaEnviarPedido.Function::FunctionHandler \
--role arn:aws:iam::000000000000:role/lambda-role \
--zip-file fileb://LambdaEnviarPedido/src/LambdaEnviarPedido/deploy.zip \
--region us-east-1

