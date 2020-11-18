#!/bin/bash
echo "1º - Escreva um script que, baseado em opções de linha de comando:
a - Liste apenas os diretórios de uma pasta
b - Liste apenas os executáveis
c - Liste apenas os scripts shell
"

#a#
ls -l | grep ^ d > diretorios
cat diretorios | grep -E -o ' [a-zA-Z0-9] + $ '
rm diretorios

#b#
ls -F > arquivos
cat arquivos | grep -E ' [a-zA-Z0-9] +. [a-zA-Z0-9] + [*] '

#c#

for i in $(ls); do
	cat ${i} 2>/dev/null | grep -E -o '[^y]+/[bin]+/[bash]+' &>/dev/null >> echo ${i} >> arquivo_auxiliar
done
cat arquivo_auxiliar
