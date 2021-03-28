#!/usr/bin/env bash
# File: whileloop_factorial.sh

num=$1
fact=1

while [[ $num>0 ]]
do
    let fact=$(( $fact* $num ))
    let num=num-1
done

echo "El factorial es $fact"
