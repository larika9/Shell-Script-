#!/bin/bash

echo "1º - Escreva um script chamado help_test_2.sh. Este deve ter um laço, apresentando opções para o usuário. Se o usuário digitar sair, ele sai do script. Se digitar “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se digitar “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se digitar “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se digitar “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se digitar “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test. Se digitar "extended", o script deve imprimir uma ajuda sobre a notação estendida [[ ]]."

touch help_test_2.sh
chmod +x help_test_2.sh
vim help_test_2.sh

#################################

while true; do
    case $1 in
        "logica") echo "-a significa um and"; echo "-o significa um or" ; echo "! reverter a condição" ;;

        "aritmetica") echo "-ge verificar se é maior "; echo " -lt verificar se é menor "; echo "-eq verifica se é igual" ;;

        "strings") echo "!= não é mesma string" ; echo "== verifica se é mesma string" ;;

        "variaveis") echo "-z está definido para a string vazia"; echo "-n é definido como uma string não vazia" ;;

        "arquivo") echo "-f verifica se o arquivo existe e é um arquivo comum" ; echo "-e verifica se o arquivo existe" ; echo "-d verificar se o diretório existe" ;;

        *) echo "Não existe esse parâmetro no test" ;;

        "sair") break;;
    esac
done
