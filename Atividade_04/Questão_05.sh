#!/bin/bash

echo "5º - Considere o script loop.sh:

#!/bin/bash
while true; do
	a=$(( ${RANDOM} % 10 ))
	touch ${a} && echo “$(date +%H:%M) ${a}: criado!”
	sleep 1
b=$(( ${RANDOM} % 10 ))
	rm ${b} && echo “$(date +%H:%M) ${b}: removido!”
done"

echo "Execute o script acima de modo que todas as mensagens de sucesso sejam salvas no arquivo 1.log e que as mensagens de erro sejam salvas no arquivo 2.log.

Execute o script novamente de modo que todas as mensagens de sucesso e erro sejam salvas no arquivo 3.log.

#!/bin/bash

touch 1.log; 2.log; 3.log

while true; do
	a=$(( ${RANDOM} % 10 ))
	touch ${a} && echo “$(date +%H:%M) ${a}: criado!”
	sleep 1
b=$(( ${RANDOM} % 10 ))
	rm ${b} && echo “$(date +%H:%M) ${b}: removido!”
done"

#!/bin/bash

touch 1.log; 2.log; 3.log

while true; do
	a=$(( ${RANDOM} % 10 )) 
	touch ${a} && echo “$(date +%H:%M) ${a}: criado!” >> 1.log &>> 2.log 2>> 3.log 
	sleep 1 >> 1.log &>> 2.log 2>> 3.log
b=$(( ${RANDOM} % 10 ))
	rm ${b} && echo “$(date +%H:%M) ${b}: removido!” >> 1.log &>> 2.log 2>> 3.log
done

cat 3.log