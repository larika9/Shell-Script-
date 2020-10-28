#!/bin/bash

echo "5º - Escreva um script que imprima a palavra DIRETORIOS e abaixo liste todos os diretórios da pasta atual. Em seguida imprima a palavra ARQUIVOS e abaixo liste todos os arquivos da pasta atual. Por fim, imprima a palavra LINKS e abaixo liste todos os links simbólicos da pasta atual"

echo "Diretórios"
for i in $(ls); do
	{if [ -d ${i} ]
    then
		echo ${i}
	fi}
echo "Arquivos"
	{if [ -f ${i} ]
    then
		echo ${i}
	fi}
echo "Links"
	{if [ -h ${i} ]
    then
		echo ${i}
	fi}
done