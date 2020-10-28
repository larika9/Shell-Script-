#!/bin/bash

echo "2º - Se você cria uma variável no shell atual e usa o comando export, esta variável fica disponível em qualquer script chamado a partir do shell atual. Ex.:

a=10
export a
./teste.sh

Se executar “echo $a” dentro do script teste.sh, este imprimirá 10. Sem o export, a variável “a” não existiria. Escreva um script que teste se as variáveis a, b e c existem (e têm valor diferente de vazio). Peça para o usuário digitar um valor para cada uma que não existir. Exiba os valores das variáveis a b e c na tela.
"

########SCRIPT########
#!/bin/bash
if test -o $a
then
	read -p "Insira um valor para variável a: " a
elif test -o $b
then
	read -p "Insira um valor para variável b: " b
elif test -o $c 
then
    read -p "Insira um valor para variável c: " c
fi
echo "Variável a: $a"
echo "Variável b: $b"
echo "Variável c: $c"