#!/bin/bash

echo "8º - [PESQUISA] Quando usamos o pipe (|) para conectar dois ou mais comandos, a variável $? toma o valor de sucesso ou falha do último comando da sequência. Como verificar o sucesso/falha dos outros comandos na sequência do pipe.

Exemplo de sequência:
	cat a.txt | tr ‘.’ ‘,’ | sort | grep -v “x”

como saber o retorno (sucesso/falha) dos comandos sort e tr?
"

echo "Resposta: "