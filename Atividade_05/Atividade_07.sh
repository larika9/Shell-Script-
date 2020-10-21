#!/bin/bash

echo "7º - [PESQUISA] Escreva um script que use a ferramenta md5 para verificar a existência de arquivos com o mesmo conteúdo no diretório atual. Caso existam, imprima o nome dos arquivos duplicados."

echo "Resposta: Pelo oque eu entendi foi que a ferramenta md5 é normalmente usada pra verificação de integridade de arquivo, md5sum [arquivo] da o retorno é a chave "hash"
A ideia desse comando seja pegar o retorno do "ls" e percorrer com o "for" os arquivos, aplicando o "md5sum" em cada um e verificando se alguma chave saiu igual"