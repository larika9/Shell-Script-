#!/bin/bash

echo "4º - Escreva um script que receba três nomes de diretórios como argumentos de linha de comando e imprima estes nomes em ordem crescente de quantidade de arquivos."

a = ls $1 | wc -l
b = ls $2 | wc -l
c = ls $3 | wc -l

if 