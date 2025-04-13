#!/bin/bash

echo "Buildando LambdaReceberPedido..."
cd   LambdaReceberPedido/src/LambdaReceberPedido
dotnet lambda package --output-package ./deploy.zip
cd ../../..

echo "Buildando LambdaValidarPedido..."
cd LambdaValidarPedido/src/LambdaValidarPedido
dotnet lambda package --output-package ./deploy.zip
cd ../../..

echo "Buildando LambdaProcessarPagamento..."
cd LambdaProcessarPagamento/src/LambdaProcessarPagamento
dotnet lambda package --output-package ./deploy.zip
cd ../../..

echo "Buildando LambdaEnviarPedido..."
cd LambdaEnviarPedido/src/LambdaEnviarPedido
dotnet lambda package --output-package ./deploy.zip
cd ../../..

echo "Build finalizado com sucesso!"
