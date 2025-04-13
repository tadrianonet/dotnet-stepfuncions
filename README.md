# AWS Step Functions com .NET e LocalStack 

Este projeto demonstra como criar um fluxo completo de orquestração de processos utilizando AWS Step Functions com AWS Lambda Functions desenvolvidas em .NET, tudo executado localmente com o LocalStack.

O objetivo deste projeto é simular um fluxo de processamento de pedidos utilizando arquitetura Serverless.



## Tecnologias Utilizadas
* .NET 
* AWS Lambda (.NET Lambda Templates)
* AWS Step Functions
* LocalStack
* AWS CLI
* Shell Scripts (.sh)

## Passos para Executar o Projeto

Gerar os .zip das Lambdas

```shell
./build.sh
```


Criar as Lambdas no LocalStack

```shell
./create-lambdas.sh
```

Criar o Step Functions

```shell
./create-stepfunctions.sh
```

Executar o Step Functions

```shell
./start-execution.sh
```