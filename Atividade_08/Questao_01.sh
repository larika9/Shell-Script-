#!/bin/bash
echo "1º - Escreva um script que receba o nome de um arquivo e um número (x) como parâmetros de linha de comando. O script deve imprimir a linha número x do arquivo."

echo -p "Qual arquivo você quer ver " arquivo
echo -p "Qual linha do arquivo que deseja obter " linha

head -${linha} < ${arquivo} | tail -1