#!/bin/bash
echo "2º- Considere o seguinte arquivo de entrada com a lista dos dez nomes mais comuns no Brasil para
Meninos e Meninas. Pede-se que o arquivo seja separado em dois, um apenas para meninos e
outro para meninas.
Ranking Meninos Ranking Meninas
1 Miguel 1 Sophia
2 Davi 2 Alice
3 Arthur 3 Julia
4 Pedro 4 Isabella
5 Gabriel 5 Manuela
6 Bernardo 6 Laura
7 Lucas 7 Luiza
8 Matheus 8 Valentina
9 Rafael 9 Giovanna
10 Heitor 10 MariaEduarda"

read -p "Qual arquivo contém a lista dos dez nomes mais comuns no Brasil? " arquivo_nomes
awk 'NR>=2 {print $2}' < ${arquivo_nomes} > arquivo_meninos
awk 'NR>=2 {print $4}' < ${arquivo_nomes} > arquivo_meninas
echo "O arquivo com os nomes dos meninos está em arquivo_meninos e arquivo com os nomes das meninas em arquivo_meninas"
