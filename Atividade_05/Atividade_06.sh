#!/bin/bash

echo "6º - Escreva um script que crie 26 diretórios com nomes de A a Z. Dentro de cada diretório criado deve ser criado um arquivo com o nome do diretório e extensão .py (exemplo A.py, B.py ...). O conteúdo de cada um destes arquivos deve ser:

#!/usr/bin/env python3
print(“Rapi Hellow Uin!”)

Lembre de dar permissão de execução para cada arquivo gerado.
"
#part.1º#
touch teste.py
vim teste.py
#####DENTRO DO VIM#####
#!/usr/bin/env python3
print(“Rapi Hellow Uin!”)
#####SAI DO VIM######
for i in {A..Z}
do
    mkdir $i; cp teste.py /$i ; cd /$i ; mv teste.py $i.py 
    chmod +x $i.py
done

