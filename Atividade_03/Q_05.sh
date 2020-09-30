#!/bin/bash

echo "5º - Escreva um script que recebe o nome de um arquivo como argumento de linha de comando e imprime GOOD caso este arquivo exista e possua mais que 5 linhas."

arquivo = $1
linhas = (($a > 5))
ls -l arquivo &> /dev/null && linhas && echo "GOOD" || echo "FAIL"