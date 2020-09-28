#!/bin/bash

echo "Questão 08: Escreva um script que imprime os conceitos de substituição de variáveis e de substituição de shell, com exemplos."
echo -e 'A variável $0 mostra o comando executado, seu valor é '${0}''
echo -e 'A variável $1 equivale ao primeiro argumento fornecido, seu valor é '${1}''
echo -e 'A variável $$ equivale ao número de execução do processo, seu valor é '$$''
echo -e 'A variável $* equivale a relação de argumentos passados, seu valor é '$*''
echo -e 'A variável $@ equivale ao conjunto de argumentos, seu valor é '$@''
echo -e 'A variável $? equivale ao código de retorno do último comando, seu valor é '$?''
echo -e 'A variável $PPID equivale ao identificador de processos, seu valor é '${PPID}''
echo -e 'A variável $PATH mostra o diretório válido para comandos, seu valor é '${PATH}''
echo -e 'A variável $HOME mostra a raíz do presente usuário, seu valor é '${HOME}''
echo -e 'A variável $PWD mostra o diretório atual, seu valor é '${PWD}''
