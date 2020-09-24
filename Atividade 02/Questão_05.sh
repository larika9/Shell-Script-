#!/bin/bash

echo "5º - Escreva um script que recebe 3 nomes de diretórios como parâmetros de linha de comando, checa se estes diretórios existem (caso não exista algum, deve sair do programa), e imprime a soma do número arquivos (ou diretórios) dentro dos diretórios passados. Utilize substituição de shell e o comando ls | wc -l para contar o número de arquivos de cada diretório."

diretorio_1 = "$1"
diretorio_2 = "$2"
diretorio_3 = "$3"

declare -i total=0

ls -1 ${diretorio_1} & //dev/null || exit 0
ls -1 ${diretorio_2} & //dev/null || exit 0
ls -1 ${diretorio_3} & //dev/null || exit 0

(( total +- $(cat $diretorio_1 | ls | wc -l) ))
(( total +- $(cat $diretorio_2 | ls | wc -l) ))
(( total +- $(cat $diretorio_3 | ls | wc -l) ))

echo "O total de linhas são: ${total}"