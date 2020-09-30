#!/bin/bash

echo "6º - Escreva um script que recebe o nome de 3 arquivos como parâmetros de linha de comando e pede para o usuário digitar uma palavra (denominada texto proibido). Imprima na tela o NOME dos arquivos que possuem este texto proibido, e mova estes arquivos (que possuem o texto proibido) para a pasta /tmp."

a= $1
b= $2
c= $3

read -p "Diga qual é a palavra proibida para move-lá para /tmp. " proibida

wc -w ${a} | grep $proibida &> /dev/null || echo "${proibido} não encontrado no arquivo ${a}" 
wc -w ${a} &> /dev/null || exit 1

wc -w ${a} | grep $proibida &> /tmp && echo "${proibido} encontrado no arquivo ${a}"

##################################################
wc -w ${b} | grep $proibida &> /dev/null || echo "${proibido} não encontrado no arquivo ${b}" 
wc -w ${b} &> /dev/null || exit 1

wc -w ${b} | grep $proibida &> /tmp && echo "${proibido} encontrado no arquivo ${b}"
##################################################

wc -w ${c} | grep $proibida &> /dev/null || echo "${proibido} não encontrado no arquivo ${c}" 
wc -w ${c} &> /dev/null || exit 1

wc -w ${c} | grep $proibida &> /tmp && echo "${proibido} encontrado no arquivo ${c}"

