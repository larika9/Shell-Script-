#!/bin/bash

echo "Questão 04: Melhore o script anterior para que, em vez de imprimir na tela os arquivos, salve esta lista no arquivo /tmp/que_lista_linda.txt"

DATA = "$(data +% d.% M.% Y.% H.% M)"
PASTA = "/tmp/DATA"

mkdir -p ${PASTA} 2>/dev/null

ls -1 $1 >> /tmp/DATA/que_lista_linda.txt.
ls -1 $2 >> /tmp/DATA/que_lista_linda.txt.
ls -1 $3 >> /tmp/DATA/que_lista_linda.txt.

cp * $PASTA

echo -e "Ação concluida por favor verificar."