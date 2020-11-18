#!/bin/bash
echo "2° - Escreva um script que remova as linhas em branco de um arquivo. Adicione uma opção para que o script conte as linhas em branco de um arquivo, em vez de removê-las."

read -p "Digite 1 para retirar as linhas em branco do arquivo e 2 para contar quantas linhas em branco existe dentro do arquivo: " ler

	case ${ler} in
		"1") read -p "Digite o nome de um arquivo: " arquivo
		     linhas=$(cat ${arquivo} | grep -E '^$' | wc -l)
		     echo "Arquivo ${arq} contém ${linhas} linhas em branco" ;;

		"2") read -p "Digite 1, para retirar as linhas em branco do arquivo: " arquivo
		     cat $arquivo | grep -E '[^$]' >> arquivo_auxiliar
		     cat arquivo_auxiliar
		     rm arquivo_auxiliar ;;
	esac
