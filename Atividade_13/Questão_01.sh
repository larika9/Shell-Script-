#!/bin/bash
echo "1º - Escreva um script com uma função que receba 2 números e retorne o maior entre eles. Escreva uma nova função, esta recebe 2 números e retorna o menor entre eles."

read -p "Escreva quais números você quer comparar: " $1 $2
function maior {
	if [ $1 -gt $2 ]; then
		echo "O maior número é $1"
    else
		echo "O menor número é $2"
	fi
}

function menor {
	if [ $1 -lt $2 ]; then
		echo "O menor número é $1"
    else
        echo "O maior número é $2"
	fi
}

function igual {
	if [ $1 -eq $2 ]; then
		echo "Os números $1 e $2 são iguais."
	fi
}
