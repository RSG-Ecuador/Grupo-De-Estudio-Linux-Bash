#!/usr/bin/env bash
<<<<<<< HEAD

echo "Ingrese el valor de la altura"
read a
echo "Ingrese el valor de la base: "
read b

for(( i=0; i<a; i++ ))
do
    for(( j=0; j<b; j++ ))
    do
        if (( i==0 )) || (( i==a-1 )) || (( j==0 )) || (( j==b-1 ))
=======
# File: printrectangle.sh
echo "Ingrese el valor de altura: "
read m
echo "Ingrese el valor de base: "
read n
for((i=0; i<m; i=i+1))
do
    for((j=0; j<n; j=j+1))
    do
        if (( i==0 )) || (( i==m-1 )) || (( j==0 )) || (( j==n-1 ))
>>>>>>> d260f32b394aceaf7483651d0b4c8be06f81209a
        then
            echo -n "*"
        else
            echo -n " "
<<<<<<< HEAD
        fi
    done
    printf "\n"
done 
=======
        fi  
    done
    printf "\n"
done

>>>>>>> d260f32b394aceaf7483651d0b4c8be06f81209a

