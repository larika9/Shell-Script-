#!/bin/bash

echo "2º - Escreva um script que peça para o usuário digitar 3 nomes de arquivo e imprima o nome daquele que possui o maior número de linhas."

read -p "Insira o nome do primeiro arquivo no qual iremos verificar entre os 3 qual é o que possui maior número de linhas. " arquivo_1

read -p "Insira o nome do segundo arquivo no qual iremos verificar entre os 3 qual é o que possui maior número de linhas. " arquivo_2

read -p "Insira o nome do terceiro arquivo no qual iremos verificar entre os 3 qual é o que possui maior número de linhas. " arquivo_3

a = wc -l arquivo_1
b = wc -l arquivo_2
c = wc -l arquivo_3
d = 0
if [a -gt d]; then
    num = $a
elif [b -gt a]; then
    num = $b    
elif [c -gt b]; then
    num = $c

echo "O arquivo que contem mais linhas é o "num". "