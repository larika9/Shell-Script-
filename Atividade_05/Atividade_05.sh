#!/bin/bash

echo "5º - Escreva um script que receba vários nomes de arquivo como parâmetros de linha de comando (o número de parâmetros pode variar de execução para execução) e imprima o nome de cada arquivo passado seguido de SIM, caso o arquivo exista, e de NAO caso contrário."

#part.1º#
for i in $@
do
    echo $i ; ${ls} | find / -name $i && echo "- SIM" || echo "- NÃO"
done