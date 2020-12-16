#!/bin/bash
echo "1º - Escreva um script que peça para o usuário digitar um conjunto de números na mesma linha, separados por espaço (podem ser vários números, o usuário decide quantos) e exiba o menor deles."

read -p "Escreva na linha de comando a quantidade de números que deseja e iremos lhe mostrar qual é o menor número " $@
echo $@ > arquivo
colunas=$(cat arquivo | awk '{print NF}')

for i in $(cat arquivo); do
        vetor[ ${#vetor[*]} ]=$i
done

menor=${vetor[0]}
for i in ${!vetor[*]}; do
        if [ ${vetor[$i]} -lt $menor ]; then
                menor=${vetor[$i]}
        fi
done
echo "O menor número é $menor"