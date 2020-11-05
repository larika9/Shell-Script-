#!/bin/bash

echo "2 - Escreva um script que espera que um arquivo chamado key seja criado no diretório atual, verificando isso a cada 2 segundos, até que o arquivo seja criado."

verificacao = naocriado
while [$verificacao != "criado"]; do 
    for i in (ls -a); then
     case $i in
        "key") verificacao=criado ;;
    fi
    sleep 2
done 