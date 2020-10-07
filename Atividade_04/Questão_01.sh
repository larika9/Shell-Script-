#!/bin/bash

echo "1º - Escreva um script chamado help_red.sh que exibe uma ajuda sobre redirecionadores. Para cada redirecionador estudado ( >, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e | ) o script deve imprimir o redirecionador, uma explicação sobre o seu funcionamento e um exemplo útil de uso."

echo -e "Redirecionador >:
É utilizado para redirecionar o resultado da saída padrão dos comandos para um arquivo, porém sobrescreve o arquivo.
Exemplo: $a > larissa.sh
\n"

echo -e "Redirecionador >>:
É utilizado para redirecionar o resultado da saída padrão dos comandos para um arquivo no qual adiciona informações no arquivo sem sobrescreve em cima dele.
Exemplo: $a >> larissa.sh
\n"

echo -e "Redirecionador 2>:
É utilizado para redirecionar a saída padrão de errdos dos comandos para um arquivo, mas sobrescreve no mesmo.
Exemplo: {(wc l- larissa.txt) == 10} 2> erro.txt
\n"

echo -e "Redirecionador 2>>:
É utilizado para redirecionar a saída padrão de errdos dos comandos para um arquivo no qual adiciona informações no arquivo sem apagá-lo
Exemplo: {(wc l- larissa.txt) == 10} 2>> erro.txt
\n"

echo -e "Redirecionador &>:
É utilizado para redericionar todas as formas do comando para um arquivo, com um detalhe ele sobrescreve o arquivo em questão.
Exemplo: {(wc l- larissa.txt) == 10} &> salvando.txt
\n"

echo -e "Redirecionador &>>:
É utilizado para redericionar todas as formas do comando para um arquivo, adicionando a saída do comando sem sobrescrever nele só adicionar informação.
Exemplo: {(wc l- larissa.txt) == 10} &>> salvando.txt
\n"

echo -e "Redirecionador <:
É utilizado para redirecionar um arquivo para uma entrada no comando. 
Exemplo: ./larissa.sh < aluna.txt
\n"

echo -e "Redirecionador <<:
É utilizado para indicar aonde o comando deve ser encerrado após encontrar o mesmo.
Exemplo: echo 'O número do telefone é o 83988757575' << fim 
\n"

echo -e "Redirecionador <<<:
É utilizado para redirecionar uma entrada de um comado para uma string de escrita no bash.
Exemplo: grep a.txt <<< "2020.1"
\n"

echo -e "Redirecionador |:
É utilizado para conectar comandos na mesma linha.
Exemplo: mv larissa.txt /home/ifpb | mv larissa.txt aluna.txt"