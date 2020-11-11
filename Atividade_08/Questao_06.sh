#!/bin/bash
echo "6° - Escreva um script que exiba um arquivo parte por parte (digamos 10 caracteres em cada parte), esperando por um enter, até o fim do arquivo.

Por exemplo, considere o arquivo:

01234567890abcdefghij01234567890123456789012345
01234567890abcdefghij01234567890123456789012345
01234567890abcdefghij01234567890123456789012345

O script deve imprimir:

Exibindo as colunas de 1 a 10 (enter para continuar):

0123456789
0123456789
0123456789
Exibindo as colunas de 11 a 20 (enter para continuar):

abcdefghij
abcdefghij
abcdefghij
"

echo -p "Qual arquivo que deseja ler? " arquivo
linhas=1
coluna=0
condicaolinhas=true
condicaocolunas=true
totaldelinhas= $(cat ${arquivo} | wc -l)
while ${condicaocolunas}; do
	linhas=1
	if [ ${colunas -gt 50 ]; 
    then
		break;
	fi
	    coluna = $(( coluna + 10 ))
	    coluna_auxiliar = $(( coluna - 9 ))
	    echo 'Exibindo as colunas de ${coluna_auxiliar} a ${coluna}'

	while ${condicaolinhas}; 
    do
		if [ ${linhas} -gt ${totaldelinhas} ];then
			break
		fi
		cat ${arquivo} | head -${linhas} | cut -c ${colunaaux} -${coluna} > comeco
		cat comeco | tail - 1 > colunasparamostrar
		cat colunasparamostrar
		linhas=$(( linhas + 1 ))
	done
	read -p "Aperte ENTER para continuar: " con
	if [ ${con} != "" ] &>/dev/null ;then
		condicaocolunas=false
	fi
done
rm comeco colunasparamostrar