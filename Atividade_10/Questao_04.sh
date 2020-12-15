#!/bin/bash

echo "4 - Escreva um script que, dado uma lista de CPFs no formato xxxxxxxxxxx, coloque cada cpf no formato xxx.xxx.xxx-xx."

read -p "Qual é o arquivo que deseje listas os CPF's " arquivo_lista
sed 's/\(...\)\(...\)\(...\)\(..\)/\1.\2.\3-\4/' < ${arquivo_lista} > arquivo_lista2
rm ${arquivo_lista}
cp arquivo_lista2 ${arquivo_lista}
rm arquivo_lista2