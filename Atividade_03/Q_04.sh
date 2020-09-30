#!/bin/bash

echo "4º - Escreva um script que receba três nomes de diretórios como argumentos de linha de comando e imprima estes nomes em ordem crescente de quantidade de arquivos."

a = ls $1 | wc -l
b = ls $2 | wc -l
c = ls $3 | wc -l

["${a}" -gt "${b}" -o "$ {b}"-gt "${c}"] && echo " "$a" "$b" e "$c"
["${b}" -gt "${a}" -o "$ {a}"-gt "${c}"] && echo " "$b" "$a" e "$c"
["${c}" -gt "${b}" -o "$ {c}"-gt "${a}"] && echo " "$c" "$b" e "$a"
