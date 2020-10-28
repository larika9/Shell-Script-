#!/bin/bash

echo "6º - Usando o comando if, escreva um script que verifique a existência de arquivos com o mesmo número de linhas no diretório atual. Caso existam, imprima o nome dos arquivos duplicados. Quando listar, verifique (usando if) se os parâmetros são arquivos ou diretórios."

for i in $(ls); do
	linhas_i=$(cat ${i} 2>/dev/null | wc -l)
	for j in $(ls); do
		linhas_j=$(cat ${j} 2>/dev/null | wc -l)
		if [ ${linhas_i} == ${linhas_j} ] && [ ${i} != ${j} ]; then
			echo "arquivos ${i} e ${j} possuem a mesma quantidade de linhas"
			test -d ${i} && echo "${i} é um diretório"
			test -e ${i} && echo "${i} é um arquivo"
			test -d ${j} && echo "${j} é um diretório"
			test -e ${j} && echo "${j} é um arquivo"
			echo -e "\n"
		fi

	done
done

