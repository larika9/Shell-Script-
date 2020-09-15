#!/bin/bash

echo "Questão 04: Melhore o script anterior para que, em vez de imprimir na tela os arquivos, salve esta lista no arquivo /tmp/que_lista_linda.txt"

read -p "Qual é o nome do 1 diretório para salvar?" $1

read -p "Qual é o nome do 2 diretório para salvar?" $2

read -p "Qual é o nome do 3 diretório para salvar" $3

DATA = "$(data +% d.% M.% Y.% H.% M)"

ls -1 $1
ls -1 $2
ls -1 $3

DATA = "$(data +% d.% M.% Y.% H.% M)"
PASTA = "/tmp/que_lista_linda.txt/DATA"

mkdir -p $ {PASTA} 2>/dev/null
cp * $PASTA

echo -e "Ação concluida por favor verificar."