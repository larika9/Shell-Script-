#!/bin/bash
echo "1º - Escreva um script que exiba a data atual e uma mensagem motivacional aleatória. Faça que esse script seja executado todas as vezes que seu usuário faça login no sistema."
#Criei dentro do diretório /bash um arquivo chamado scriptInicializacao com o seguinte conteúdo:

/bash_profile

data=$(date "+%a, %d/%M/%Y")
echo "#####################################################"
echo -e "\n$data"
echo -e "\nÉ sempre divertido fazer o impossível” – Walt Disney!!!!\n"
echo -e "#################################################\n"
cat supresa.sh

#Dentro do arquivo /bash/profile eu adicionei uma linha com 'source /bash/Atividade_14/Questão_01.sh', para que cada usuário ao logar no sistema irá receber esta mensagem.#