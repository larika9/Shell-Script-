#!/bin/bash
echo "4° - Escreva um script que valide as seguintes regras para criação de senha: pelo menos uma letra maiúscula, uma letra minúscula e um número. Validar significa receber uma senha e dizer se esta obedece ao padrão ou não."

read -p "Crie a sua senha: " senha
echo ${senha} > senha

letra_maiuscula=$(cat senha | grep -E -o '[A-Z]+')
letra_minuscula=$(cat senha | grep -E -o '[a-z]+')
numero=$(cat senha | grep -E -o '[0-9]+')

if [ -n "${letra_maiuscula}" ]; then
	if [ -n "${letra_minuscula}" ] ; then
		if [ -n "${numero}" ]; then
			echo "Senha válida"
		else
			echo "Senha inválida"
		fi
	else
		echo "Senha inválida"
	fi
else
	echo "Senha inválida"
fi
