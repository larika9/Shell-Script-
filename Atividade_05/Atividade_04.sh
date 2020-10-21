#!/bin/bash

echo "4º - Escreva um script que gere 101 números aleatórios, salvando-os, um por linha, no arquivo num.txt. Use o comando wc para verificar se o arquivo num.txt tem realmente 101 linhas. Escreva um segundo script, este deve ler todos os números de num.txt e calcular a sua soma."

#part.1º#
for i in $(seq 1 101)
do
    a=$(( $RANDOM )) &>> num.txt | echo -e "\n"
done
echo "cat num.txt | wc -l"

#part.2º#
c = 0
for i in $(seq 1 101)
do
    a=$(( $RANDOM )) &>> num.txt >> $c | echo -e "\n"
    b=$(($paste -sd+ num.txt | bc))
done
echo "$b"