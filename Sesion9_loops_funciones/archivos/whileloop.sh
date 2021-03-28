#!/usr/bin/env bash
# File: whileloop_factorial.sh
<<<<<<< HEAD

num=$1
fact=1

while [[ $num>0 ]]
do
    let fact=$(( $fact* $num ))
    let num=num-1
done

echo "El factorial es $fact"
=======
counter=$1
factorial=1
while [ $counter -gt 0 ]
do
   factorial=$(($factorial * $counter))
   counter=$(($counter - 1))
done
echo El numero es $factorial
>>>>>>> d260f32b394aceaf7483651d0b4c8be06f81209a
