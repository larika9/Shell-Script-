#!/bin/bash
echo "2 - Escreva um script que receba o nome de um arquivo e um número (y) como parâmetros de linha de comando. O script deve imprimir a coluna número y do arquivo."

cut -c $1 < $2
