#!/usr/bin/env bash   
# File: printrectangle.sh   
echo   Ingrese el valor de altura:      
read m   
echo   Ingrese el valor de base:      
read n   
for((i=0; i<m; i=i+1))   
do   
    for((j=0; j<n; j=j+1))   
    do   
        if (( i==0 )) || (( i==m-1 )) || (( j==0 )) || (( j==n-1 ))   
        then   
            echo -n   "*"     
        else   
            echo -n   " "      
        fi     
    done   
    printf "\n"          
done  