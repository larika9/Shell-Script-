#!/bin/bash

echo "6º - [PESQUISA] Cada caso do comando case pode terminar com “;;”. Escreva um script que exiba as outras opções de terminadores para os casos do case, explicando cada uma delas."

while true; do
    echo "Existe as opções fora do ; são ;;& e ;&"
    read - p "Qual você deseja ter mais detalhes? " terminadores
     case $terminadores in
        ";;&") echo "Quando um bloco de comandos for encerrado com este terminador, o programa não sairá do case, mas testará os próximos padrões" ;;&
		";&") echo "O próximo bloco será executado, sem sequer testar o seu padrão." ;&
    esac 
done