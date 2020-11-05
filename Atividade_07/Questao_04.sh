#!/bin/bash

echo "4º - Escreva um script que use o laço while para contar quantas linhas de um arquivo tem apenas números e quantas tem letras."

linha_letras = $@
linha_numeros = $@

while read linha; do
	[ $linha -gt -1 ] &>/dev/null && linhas_numeros=$(( linhas_numeros + 1 )) || linhas_letras=$(( linhas_letras + 1 ))
done < arquivo.txt

echo "Linhas com letras: $linhas_letras "
echo "Linhas somente com números: $linhas_numeros " 