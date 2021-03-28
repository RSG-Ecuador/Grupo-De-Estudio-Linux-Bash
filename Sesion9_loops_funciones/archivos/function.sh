#!/usr/bin/env bash
<<<<<<< HEAD
# Conteo de secuencias, separación de malas secuencias
for code in $(ls *.fasta)
do
        echo "File: $code" >> patrones.txt
        egrep "AT..TC" $code >> patrones.txt

done
=======
# File: ntmy.sh
function ntmy {
    echo "Nice to meet you $1"
}
>>>>>>> d260f32b394aceaf7483651d0b4c8be06f81209a
