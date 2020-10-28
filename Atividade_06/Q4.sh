#!/bin/bash

echo "4º - Escreva um script que receba 3 nomes de arquivos como argumentos de linha de comando. Verifique se pelo menos 2 destes arquivos passaram do tamanho crítico, que significa ter 5 linhas ou mais."

max = 5
ult = ${i}
for i in $@
then
    {linha = $(cat ${i} | wc -l)
    if ((linha >= max ))
    then
        ult = ult + 1
    fi}
done

if [ult -ge 2]
then
    echo "Dois arquivos passaram do tamanho crítico, pois possue mais ou igual a 5 linhas. "
fi       