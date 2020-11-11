#!/bin/bash
echo "3 - Escreva um script que use o comando tr para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n)."

echo -p "Qual arquivo que você deseja retirar as linhas vazias? " arquivo

cat ${arquivo} | tr -s "\n" > arquivo_novo
cp arquivo_novo arquivo
rm arquivo_novo