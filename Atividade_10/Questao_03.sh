#!/bin/bash

echo "3º - Escreva um script que remova todos os números de telefone de um arquivo de entrada, alterando o seu valor para **CENSURADO**.
"
read -p "Qual é o arquivo que contém os números de telefones? " arquivo_telefones
sed -E 's/[(0-9)+ [0-9]+/ **CENSURADO** /' < ${arquivo_telefones} > arquivo_telefones2
rm ${arquivo_telefones}
cp arquivo_telefones2 ${arquivo_telefones}
rm arquivo_telefones2
echo ''