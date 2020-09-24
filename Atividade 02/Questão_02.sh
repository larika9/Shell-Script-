#!/bin/bash

echo "Escreva um script que receba dois números inteiros como argumentos de linha de comando, digamos a e b, e imprima o primeiro elevado ao segundo, ou seja a elevado a b. 

Exemplo:
./pow.sh 4 2
16"

read -p "Digite o valor da váriavel 1" a
read -p "Digite o valor da váriavel 2" b 

echo $ ((a**b))

