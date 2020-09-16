#!/bin/bash

echo "Questão 05: Escreva um script que: crie um diretório /bin/DATA onde DATA deve ser a data atual do sistema obtida a partir do comando date (no formato ano-mes-dia); e copie todos os arquivos do diretório atual para este novo diretório."

DATA = "$(data +% Y.% M.% d)"
PASTA = "/bin/$DATA"
mkdir -p ${PASTA} 2>/dev/null

ls -1 ./ >> /bin/DATA

cp *  $PASTA