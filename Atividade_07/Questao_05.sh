#!/bin/bash

echo "5º - Considere o seguinte arquivo ips.txt:

8.8.8.8
8.8.4.4
200.148.191.197
168.196.40.154
45.225.123.54

Use um laço while para executar 4 pings para cada ip. Liste os IPs que não foram possíveis acessar.
"

while read a; do
	echo "DANDO PING EM: ${a}"
	echo -e "\n"
	echo -e "\n"
	ip= ${a}
	ping -c 4 ${ip}
done < ips.txt
