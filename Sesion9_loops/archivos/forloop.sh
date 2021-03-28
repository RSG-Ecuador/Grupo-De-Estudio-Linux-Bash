#!/usr/bin/env bash

echo "Ingrese el valor de la altura"
read a
echo "Ingrese el valor de la base: "
read b

for(( i=0; i<a; i++ ))
do
    for(( j=0; j<b; j++ ))
    do
        if (( i==0 )) || (( i==a-1 )) || (( j==0 )) || (( j==b-1 ))
        then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    printf "\n"
done 

