#!/bin/bash

echo "3º - Escreva um script que funcione como um explorador de arquivos. Exibe um menu. se o usuário digitar q, sai do script. Se digitar d, mostra os diretórios da pasta atual. Se digitar f, exibe os arquivos da pasta atual. Se digitar v <arq>, exibe o conteúdo do arquivo <arq>. Se digitar cd <dir>, muda para o diretório <dir>, se este existir."

while true; do
        case $1 in
            "q")   
                 break ;;
            "d") 
                ls -a ;;
            "f") 
                ls -F | grep '/' ;;
            "v") 
                cat $2 ;;
            "cd") 
                cd /$2 ;;
        esac
done