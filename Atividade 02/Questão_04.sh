#!/bin/bash

echo "4º - Escreva um script que recebe 3 nomes de arquivo como parâmetros de linha de comando, checa se estes arquivos existem (caso não exista algum, deve sair do programa), e imprime a soma dos números de linhas dos 3 arquivos. Utilize substituição de shell e o comando wc -l para contar o número de linhas de cada arquivo."

arquivo_1 = "$1"
arquivo_2 = "$2"
arquivo_3 = "$3"

declare -i total=0

ls -1 ${arquivo_1} & //dev/null || exit 0
ls -1 ${arquivo_2} & //dev/null || exit 0
ls -1 ${arquivo_3} & //dev/null || exit 0

(( total +- $(cat $arquivo_1 | wc -l) ))
(( total +- $(cat $arquivo_2 | wc -l) ))
(( total +- $(cat $arquivo_3 | wc -l) ))

echo "O total de linhas são: ${total}"
