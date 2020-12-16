#!/bin/bash
echo "3º - Considere o seguinte arquivo com nomes reais de pessoas:

Ana Thereza Vasques
Brissa Silvia Bracchi
Dehbora Kaynahra Patricia da Silva
Graucia Adyana Dantas Pereira
Ysabelle Aciole Lhima Santos de Oliveirah
Marylih Rodriguez Fehlixis

Escreva um script que abrevie o nome da cada pessoa na lista. Use arrays e strings.
Exemplo de saída:

Ana T. Vasques
Brissa S. Bracchi
Dehbora K. P. d. Silva
Graucia A. D. Pereira
Ysabelle A. L. S. d. Oliveirah
Marylih R. Fehlixis
"
i=0
while read linha; do
        primeiro_nome=$(echo $linha | awk '{print $1}')
        ultimo_nome=$(echo $linha | awk '{print $NF}')
        vetor_primeiro_nome=( ${vetor_primeiro_nome[*]} $primeiro_nome )
        vetor_ultimo_nome=( ${vetor_ultimo_nome[*]} $ultimo_nome )
        sem_primeiro_nome=$(echo $linha | grep -E -o '[ a-zA-Z]+')
        nome_meio=$(echo $sem_primeiro_nome | grep -E -o ' [ a-zA-Z]+ \b')

        primeiro_nome_meio=$(echo $nome_meio | awk '{print $1}')
        segundo_nome_meio=$(echo $nome_meio | awk '{print $2}')
        terceiro_nome_meio=$(echo $nome_meio | awk '{print $3}')
        quarto_nome_meio=$(echo $nome_meio | awk '{print $4}')
        quinto_nome_meio=$(echo $nome_meio | awk '{print $5}')

        n_nomes_2=$(echo $linha | awk '{print NF}')
        n_nomes=$(( n_nomes_2 - 2 ))

 	if [ $NFS -eq 1 ]; then
                echo "${vetor_primeiro_nome[$i]} ${primeiro_nome_meio:0:1}. ${vetor_ultimo_nome[$i]}"
        elif [ $NFS -eq 2 ]; then
                echo "${vetor_primeiro_nome[$i]} ${primeiro_nome_meio:0:1}. ${segundo_nome_meio:0:1}. ${vetor_ultimo_nome[$i]}"
        elif [ $NFS -eq 3 ]; then
                echo "${vetor_primeiro_nome[$i]} ${primeiro_nome_meio:0:1}. ${segundo_nome_meio:0:1}. ${terceiro_nome_meio:0:1}. ${vetor_ultimo_nome[$i]}"
        elif [ $NFS -eq 4 ]; then
                echo "${vetor_primeiro_nome[$i]} ${primeiro_nome_meio:0:1}. ${segundo_nome_meio:0:1}. ${terceiro_nome_meio:0:1}. ${quarto_nome_meio:0:1}. ${vetor_ultimo_nome[$i]}"
        elif [ $NFS -eq 5 ]; then
                echo "${vetor_primeiro_nome[$i]} ${primeiro_nome_meio:0:1}. ${segundo_nome_meio:0:1}. ${terceiro_nome_meio:0:1}. ${quarto_nome_meio:0:1}. ${quinto_nome_meio:0:1}. ${vetor_ultimo_nome[$i]}"
        fi
	i=$(( i + 1 ))
done < lista_nomes