#!/bin/bash

echo "2º - Escreva um script que exiba o nome e número de linhas de cada um dos arquivos do diretório atual. Melhore o script para que os arquivos sejam exibidos em ordem decrescente em relação ao número de linhas. Melhore ainda mais o script para que receba o nome do diretório (de onde serão listados os nomes dos arquivos) seja lido como parâmetro de linha de comando."

#part.1º#
for i in ${ls} 
do
    echo " ${ls:i} | grep wc -l {ls:1}" 
done

#part.2º#
a = $( ${ls} | wc -l)
c = $(cd /$1)
for i in ${ls} | sort -r ${a}
do
    echo " ${ls} | grep wc -l" 
done
