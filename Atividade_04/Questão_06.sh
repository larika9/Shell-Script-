#!/bin/bash

echo "6º - [PESQUISA] Considere o script apresentado na questão anterior. Suponha que você queira substituir todo ‘:’ da saída por ‘-’. Seria simples executar

./loop.sh | tr ‘:’ ‘-’

contudo este comando não faz substituições na saída de erros. Como usar redirecionadores de modo que o comando tr consiga substituir os caracteres tanto da saída de erro quanto da saída padrão? "

echo -e "Reposta: Professor eu troquei o | por |&.\n
./loop.sh |& tr ‘:’ ‘-’ "