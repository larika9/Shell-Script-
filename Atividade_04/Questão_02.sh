#!/bin/bash

echo "2º- Considere o seguinte arquivo a.txt:

obase=16
43^2 - (11^3 + 31/4)
10+10

Escreva um script que use o programa bc e redirecionadores de entrada para resolver estas contas. Faça uma versão usando pipe e outra sem usar pipe."


echo -e "Com |\n"
obase=16; | bc
43^2 - (11^3 + 31/4) | bc
10 + 10 | bc 
echo ""
echo -e "Sem |\n"
r1 =$(bc <<< obase=16)
r2 =$(bc <<< 43^2 - {11^3 + 31/4})
r3 =$(bc <<< 10+10)