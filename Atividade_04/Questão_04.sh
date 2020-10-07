#!/bin/bash

echo "4º - Considere o script:

#!/bin/bash
workdir=”/tmp/workdir”
mkdir $workdir
cd $workdir
ls $1 || echo “Por favor crie o arquivo ${workdir}/${1}”
ls $1 || exit 1
ls $2 || echo “Por favor crie o arquivo ${workdir}/${2}”
ls $2 || exit 1
ls $3 || echo “Por favor crie o arquivo ${workdir}/${3}”
ls $3 || exit 1
cat $1 $2 $3 | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario”

Altere o script apresentado para que não exiba nenhuma mensagem de erro na tela. (Exceto pelo comando da linha 3, este deve ser permitido a exibir suas mensagens de erro)."

#!/bin/bash
workdir = ${/tmp/workdir}
mkdir $workdir
cd /$workdir

ls $1 | echo -e "Por favor crie o arquivo ${workdir}/${1}"
| touch /tmp/workdir/$1
ls $1 &> /dev/null || exit 1

ls $2 | echo -e "Por favor crie o arquivo ${workdir}/${2}"
| touch /tmp/workdir/$2
ls $2 &> /dev/null || exit 1

ls $3 | echo -e "Por favor crie o arquivo ${workdir}/${3}"
| touch /tmp/workdir/$3
ls $3 &> /dev/null || exit 1

cat $1; $2; $3 | tr ‘.’ ‘\n’ | sort | grep -v “comentario”
