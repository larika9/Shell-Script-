#!/bin/bash
echo"2º - Escreva um script que remova todos os arquivos da pasta /home/<seu_user>/tmp. Faça que este script seja executado todas as vezes que o computador for ligado."
#Criei dentro do diretório /bash um arquivo chamado Questão_02.sh, com os comandos a seguir:#

rm -rf /home/larika/tmp/*

#Dentro do arquivo /bash/profile adicionei uma linha com "source /Questão_02.sh" e quando o usuário for entrar tanto usuário comum ou como root, os arquivos do diretório /home/larika/tmp/ vão ser removidos.#
