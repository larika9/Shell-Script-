#!/bin/bash

echo "6º - Escreva um script que use o arquivo /etc/passwd para contar o número de usuários do sistema. Adicionalmente, use grep, wc -l e substituição de shell para verificar quantos usuários usam /bin/bash como interpretador de comandos padrão. Use aritmética do shell para calcular quantos usuários não usam /bin/bash como interpretador de comandos padrão."

declare -i usuarios_bash=0

numero_usuarios=$(cut -d: -f1 /etc/passwd | wc -l)
usuarios_bin_bash=$(grep -v "/bim/bash" /etc/passwd | wc -l)))

echo "Existe $numero_usuarios no sistemas:"
echo "Existe $usuarios_bin_bash na Bash do sistema"
echo "Existe $usuarios_bash que não utilizam o BASH."
