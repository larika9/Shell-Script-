#!/bin/bash

echo "8º - [OPCIONAL] Escreva um script que melhore o script da questão anterior para que funcione com números fracionários.

Exemplo:
./soma3.sh 1.2 2.3 3.4
6.9"

echo -e "A soma de $1, $2 e $3 é $(( $1| bc + $2 | bc + $3 | bc ))"
