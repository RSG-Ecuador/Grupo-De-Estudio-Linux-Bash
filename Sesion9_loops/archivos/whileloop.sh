#!/usr/bin/env bash
# File: whileloop_factorial.sh
counter=$1
factorial=1
while [ $counter -gt 0 ]
do
   factorial=$(($factorial * $counter))
   counter=$(($counter - 1))
done
echo El numero es $factorial
