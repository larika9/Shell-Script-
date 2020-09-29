#!/bin/bash

echo "3º - Escreva um script que receba três nomes de arquivos como argumentos de linha de comando e imprima estes nomes em ordem crescente de número de linhas."

a = wc -l $1
b = wc -l $2
c = wc -l $3

for linha in a b c; do
    {
    echo $linha
    sleep $linha
    } &
done
