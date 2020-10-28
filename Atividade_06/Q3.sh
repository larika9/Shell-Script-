#!/bin/bash

echo "3º - Escreva um script que receba uma lista de arquivos como parâmetros de linha de comando e exiba na tela os arquivos que são executáveis."

for i in $@
then
{if [-x ${i}]
then
    echo "${i} é um arquivo executável"
else
    echo "${i} não é um arquivo executável"
fi}
done
