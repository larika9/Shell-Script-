#!/bin/bash

echo "1º - Escreva um script que receba um nome de arquivo como parâmetro de linha de comando e, usando apenas uma linha de comando e operadores condicionais (&& e || ) imprima SIM caso o arquivo exista e NAO, caso contrário."

read -p "Insira o arquivo que devemos procurar no sistema, o resultado será a confirmação ou não do arquivo salvo. " arquivo

ls arquivo &> /dev/null && echo "Existe esse arquivo" || echo "Não existe"