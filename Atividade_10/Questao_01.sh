#!/bin/bash

echo "1° - Escreva um script que, baseado em opções de linha de comando:
a - Remova todas as letras de um arquivo.
b - Remova todos os dígitos de um arquivo.
c - Remova todos os caracteres que não são letras nem dígitos de um arquivo.
"
#A - Remova todas as letras de um arquivo.#

read -p "Qual arquivo você deseja retirar todas as letras? " arquivo_letras
sed -E 's/[a-z]+//g' < ${arquivo_letras} > arquivo_letras2
rm ${arquivo_letras}
cp arquivo_letras2 ${arquivo_letras}
rm arquivo_letras2

#B - Remova todos os dígitos de um arquivo.#

read -p "Qual arquivo você deseja retirar todos os dígitos? " arquivo_digito
sed -E 's/[0-9]+//g' < ${arquivo_digito} > arquivo_digito2
rm ${arquivo_digito}
cp arquivo_digito2 ${arquivo_digito}
rm arquivo_digito2

#C - Remova todos os caracteres que não são letras nem dígitos de um arquivo.#

read -p "Qual arquivo você deseja retirar todos caracteres que não são letras nem dígitos? " arquivo_misto
sed -E 's/[^a-z0-9]//g' < ${arquivo_misto} > arquivo_misto2
rm ${arquivo_misto}
cp arquivo_misto2 ${arquivo_misto}
rm arquivo_misto2