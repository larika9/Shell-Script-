#!/bin/bash
echo "2º - Considere o seguinte arquivo:

	12 10 13 14
	6 5 -9 11 12 4
	15
	12 3
	21 1 2 3 4 5 6 7 8 9
	6

Escreva um script que importe as funções da questão anterior e use-as para encontrar o menor e o maior número do arquivo apresentado acima.
"
while read questao_02; do

maior=$(maior_numero)
menor=$(menor_numero)
igual=$(numeros_iguais) 
done < Questão_01.sh

echo "O Maior número desse arquivo é $maior , já o Menor número é $menor , existe números iguais como por exemplo $numeros_iguais"