#!/bin/bash
echo "4º- Dado um arquivo com todos os downloads efetuados pelos usuários no último mês, deseja-se
totalizar quanto cada usuário baixou. Segue o formato do arquivo:
Nelson www.google.com.br 250
Arr445 www.testes.com/dbz.wmv 20050
Nelson www.uol.com.br 300
Vianna debian.org/9.7.0.iso 800555"

#Lembrando que foi criado um arquivo com os downloads dos usuários chamado de arquivo_donwloads#

usuario_1="Nelson"
usuario_2="Arr445"
usuario_3="Vianna"
cont_usuario_1=0
cont_usuario_2=0
cont_usuario_3=0
while read linha; do
	usuario=$(echo ${linha} | awk '{print $1}')
	if [ ${usuario} == ${usuario_1} ]; then
		donwloads=$(echo ${linha} | awk '{print $3}')
		cont_usuario_1=$(( cont_usuario_1 + ${donwloads} ))
	elif [ ${usuario} == ${usuario_2} ]; then
		donwloads=$(echo ${linha} | awk '{print $3}')
		cont_usuario_2=$(( cont_usuario_2 + ${donwloads} ))
	elif [ ${usuario} == ${usuario_3} ]; then
		donwloads=$(echo ${linha} | awk '{print $3}')
		cont_usuario_3=$(( cont_usuario_3 + ${donwloads} ))
	fi
done < arquivo_donwloads
echo "O usuário '${usuario_1}' fez o total de ${cont_usuario_1} donwloads"
echo "O usuário '${usuario_2}' fez o total de ${cont_usuario_2} donwloads"
echo "O usuário '${usuario_3}' fez o total de${cont_usuario_3} donwloads"
done