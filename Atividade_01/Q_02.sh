#!/bin/bash

echo "Questão 02: Escreva um script que pergunte ao usuário o nome de 3 diretórios e liste todos os arquivos destes 3 diretórios."

read -p "Qual é o nome do primeiro diretório que deseja listar? " diretorio1

read -p "Qual é o nome do segundo diretório que deseja listar? " diretorio2

read -p "Qual é o nome do terceiro diretório que deseja listar? " diretorio3


ls -1 $diretorio1
echo -e "\n"
ls -1 $diretorio2
echo -e "\n"
ls -1 $diretorio3
echo -e "\n"
echo "Diretórios Listados"