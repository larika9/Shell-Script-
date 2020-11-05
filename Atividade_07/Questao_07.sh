#!/bin/bash

echo "7º - [PESQUISA] Escreva um script que exiba e exemplifique as diferenças entre o laço while e o laço until."

read -p "Digite While para saber oque é um while ou digite until para mais informações sobre: " cond

case $cond in
    while) echo "No While, a condição primeiro é testada, depois as instruções são executadas.  Caso a condição seja falsa ao entrar pela primeira vez no loop, os comandos que forma o "corpo" do loop podem não ser executados nenhuma vez." ;;
    until) echo "No UNTIL, primeiro os comandos são executados, depois a condição é testada para verificar se deve haver repetição ou não.  O "corpo" do loop sempre será executado ao menos uma vez." ;; 
esac 
