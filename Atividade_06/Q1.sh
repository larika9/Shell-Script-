#!/bin/bash

echo "1º - Escreva um script chamado help_test.sh. Este deve receber um ou mais parâmetros de linha de comando. Se um destes parâmetros for “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se um destes parâmetros for “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se um destes parâmetros for “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se um destes parâmetros for “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se um destes parâmetros for “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test."

touch help_test.sh
chmod +x help_test.sh

#####APÓS LINHA DE COMANDO#####

#!/bin/bash
a=$@
for i in $@
then
{if [ ${i} == "logica"]
 then
	echo "-a significa um and"
	echo "-o significa um or"
    echo "! reverter a condição" 
elif [${i} == "aritmetica"]
then
    echo "-ge verificar se é maior "
    echo " -lt verificar se é menor " 
    echo "-eq verifica se é igual"
elif [${i} == "strings"]
then
    echo "!= não é mesma string" 
    echo "== verifica se é mesma string"
elif [${i} == "variaveis"]
then
    echo "-z está definido para a string vazia"
    echo "-n é definido como uma string não vazia"
elif [${i} == "arquivo"]
then
    echo "-f verifica se o arquivo existe e é um arquivo comum"
    echo "-e verifica se o arquivo existe"
    echo "-d verificar se o diretório existe"
else    
    echo "Não existe esse parâmetro no test"
fi}
done