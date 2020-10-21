#!/bin/bash

echo "1º - Escreva um script que imprima todos os números pares de 1 até 21. Melhore o script para que imprima todos os números pares entre a e b, sendo a o primeiro parâmetro de linha de comando, enquanto que b é o segundo."

#part.1º#
for i in $1 
do
    a =$(($1 % 2 == 0)) && echo "${a}"
done

#part.2º#

for i in {$1..$2}
do
    a =$(({$1..$2} % 2 == 0)) && echo "${a}"
done

