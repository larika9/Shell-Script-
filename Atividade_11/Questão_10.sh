#!/bin/bash
echo "10º- Uma empresa possui uma política de criação de nomes de usuários: dado o nome completo da
pessoa, usar o primeiro nome seguido pela primeira letra de cada sobrenome (ou conectivo da
dos de). Exemplo: Thiago Gouveia da Silva ganha o nome de usuário ThiagoGdS, enquanto
Josias de Pádua Maranhão Ayres Junior, ganha o nome de usuário JosiasdPMAJ. Foi enviada
uma lista contendo os dados dos funcionários da empresa para que você criasse os usuários. Sua
tarefa é, dado a entrada, criar uma lista com os nomes de usuários que devem ser criados. Segue
o Formato da lista:

Thiago Gouveia da Silva
34 Anos
Professor
João Pessoa

Josias de Pádua Maranhão Ayres Júnior
26 Anos
Pedreiro
Campina Grande

Victor Hugo de la France
79 Anos
Escritor
França

Manequias dos Arais de Fortal
45 Anos
Padeiro e Confeiteiro, mas também faz tudo
Belo Jardim, mas também Arraial do Cabo"

rm arquivo_nomes 2>/dev/null
awk 'NR==1' < lista > arquivo_auxiliar
top -b -n1 | awk '/^$/{print;getline;print}' < lista >> arquivo_auxiliar
cat arquivo_auxiliar | tr -s "\n" > arquivo_auxiliar_2
cp arquivo_auxiliar_2 arquivo_auxiliar
rm arquivo_auxiliar_2

linha=1

while read linha; do
	primeiro_nome=$(cat arquivo_auxiliar | awk 'NR=='$linha' {print $1}')
	segundo_nome=$(cat arquivo_auxiliar | awk 'NR=='$linha' {print $2}' | grep -E -o '^[a-zA-Z]')
	terceiro_nome=$(cat arquivo_auxiliar | awk 'NR=='$linha' {print $3}' | grep -E -o '^[a-zA-Z]')
	quarto_nome=$(cat arquivo_auxiliar | awk 'NR=='$linha' {print $4}' | grep -E -o '^[a-zA-Z]')
	quinto_nome=$(cat arquivo_auxiliar | awk 'NR=='$linha' {print $5}' | grep -E -o '^[a-zA-Z]')
	sexto_nome=$(cat arquivo_auxiliar| awk 'NR=='$linha' {print $6}' | grep -E -o '^[a-zA-Z]')
	setimo_nome=$(cat arquivo_auxiliar | awk 'NR=='$linha' {print $7}' | grep -E -o '^[a-zA-Z]')

	echo ${primeiro_nome}${segundo_nome}${terceiro_nome}${quarto_nome}${quinto_nome}${sexto_nome}${setimo_nome} >> arquivo_nomes
	linha=$(( linha + 1 ))

done < arquivo_auxiliar
echo "Os novos usuários foram criados e estão localizados no arquivo *arquivo_nomes*"