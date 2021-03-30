#!/usr/bin/env bash    
# File: forloop_max.sh    
min=1000    
echo   Ingrese la cantidad de num:       
read n    
    
for((i=1;i<=n; i++))    
do    
    echo   Elemento \$i: # En el script .sh deben omitir el back slash (\)        
    read num    

    if (( num < min ))       
    then    
        let min=num    
    fi    
done    
    
echo   El menor es: $min  