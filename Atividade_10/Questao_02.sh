#!/bin/bash

echo "2° - Dado um arquivo cuja primeira linha é o título e as linhas seguintes são ítens de uma lista. Escreva um script que crie um arquivo html completo usando o conteúdo do arquivo de entrada. Exemplo de arquivo:

	Lista de IPs
	8.8.8.8
	8.8.4.4
	127.0.0.1
	123.123.123.1
"
read -p "Qual arquivo que contém a lista de IPs, deve armazenar num arquivo Html? " arquivo_lista
sed -E 's/^/<p>/' < ${arquivo_lista} > arquivo_lista1
awk '{print $0"</p>"}' arquivo_lista1 > arquivo_lista2
sed -E -e '1i <head>' -e '2i <body>' < arquivo_lista2 > arquivo_html
sed -i '$s/$/\n/' arquivo_html
sed -i '$i ''</body>''' arquivo_html
sed -i '$i ''</head>''' arquivo_html
cat arquivo_html
rm arquivo_au*