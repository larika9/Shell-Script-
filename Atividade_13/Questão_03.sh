#!/bin/bash
echo "3º - Escreva um script que tenha uma função ping_test. Esta recebe um endereço IP como parâmetro, pinga para este IP (sem exibir nada na tela) e exibe OK se o endereço estiver acessível e FALHA caso contrário."

function ping_teste () {
        ping -c 2 $1 > arquivo_teste_ping
        ultima_linha=$(cat arquivo_teste_ping |  wc -l)
        ping_sucesso=$(cat arquivo_teste_ping | awk 'NR=='$(( ultima_linha-1 ))' {print $4}')
        if [ $ping_sucesso -eq 0 ]; then
                echo "FALHA - Houve perda de pacotes."
        else
                echo "OK - 0% de perda de pacotes."
        fi
}