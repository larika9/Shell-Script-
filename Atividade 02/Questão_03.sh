#!/bin/bash

echo "3º - Escreva um script que peça para o usuário digitar um número e diga se este número é par ou ímpar."

read -p "Insira o valor do número: " num

op= $(( $num % 2))
if [ $op = 0]; then
    echo -e "O número é Par/n"
else
    echo -e "O número é Ímpar/n"
fi