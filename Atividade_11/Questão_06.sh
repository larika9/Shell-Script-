#!/bin/bash
echo "6º- Dado um arquivo com nomes e notas de alunos, imprima a lista de alunos aprovados, i.e. com
média maior ou igual a 70. Segue o formato do arquivo:
Nelson Antunes de Coimbra 100 100 100
José Edyson 50 100 50
Joao das Neves Pereira Pádua e Talz 100 0 100
Amanda Selfie 100 70 70"

{
	acc=0
	for( i=1; i<=NF; i++ )
	{
		if( $i ~ /[0-9]+/ ) acc = acc+$i;
	}

	if( acc/3.0 >= 70 )
	{
		for( j=1; j<=NF; j++ )
		{
			if( $j ~ /[^0-9]+/ ) printf $j" ";
		}
		printf "\n";
	}
}