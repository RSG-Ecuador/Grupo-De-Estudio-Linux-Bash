#!/usr/bin/env bash
# Conteo de secuencias, separación de malas secuencias
for code in $(ls *.fasta)
do
        echo "File: $code" >> patrones.txt
        egrep "AT..TC" $code >> patrones.txt

done