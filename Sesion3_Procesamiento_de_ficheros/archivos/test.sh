Ejemplo de for loop iterando sobre un brace:

#!/usr/bin/env bash
# File: forloop_brace.sh
echo "Antes del ciclo"
for i in ${1..5}
do
echo "i es igual a $i"
done
echo "Después del ciclo"

Ejemplo de for loop iterando sobre un arreglo de números:

#!/usr/bin/env bash
# File: forloop_array.sh
echo "Antes del ciclo"
array=(1 3 9 10)
for i in {array[*]}
do
echo "i es igual a $i"
done
echo "Después del ciclo"

Ejemplo de for loop iterando sobre un arreglo de strings:

#!/usr/bin/env bash
# File: forloop_array2.sh
echo "Antes del ciclo"
array=(Ecuador Colombia Mexico CostaRica)
idx=1
for pais in ${array[*]}
do
echo "El pais idx es $i"
let idx=idx+1
done
echo "Después del ciclo"

Ejemplo de for loop iterando resultado de un comando:

#!/usr/bin/env bash
# File: forloop_comando.sh
for code in $(ls)
do
echo "$code is a bash script"
done

Ejemplo de for loop para obtener el promedio de números en un arreglo:

#!/usr/bin/env bash
# File: forloop_array_prom.sh
cont=0
sum=0
lista=(1 2 3 4 5)

for i in ${lista[*]}
do
    let sum=i+sum
    if [[ ! $i == 0 ]]
    then
        let cont=cont+1
    fi
done

prom=0
let prom=sum/cont
echo "EL proomedio es: $prom"

Ejemplo de for loop estilo c para imprimir una lista de números en forma ascendente:

#!/usr/bin/env bash
# File: forloop_num_asc.sh
for ((i = 0 ; i < 10 ; i++)) 
do
    echo $i
done

Ejemplo de for loop estilo c para imprimir una lista de números en forma descendente:

#!/usr/bin/env bash
# File: forloop_num_asc.sh
for ((i = 10 ; i > 0 ; i--)) 
do
    echo $i
done

Ejemplo de for loop estilo c para imprimir los números entre 1 y 100 divisibles para 7:

#!/usr/bin/env bash
# File: forloop_div7.sh
for((x=1;x<= 100; x++))
do
    temp=$(( $x % 7 ))
    if [[ $temp == 0 ]]
    then
        echo $x 
    fi
done

Ejemplo de for loop estilo c para obtener el promedio de números ingresados por el usuario:

#!/usr/bin/env bash
# File: forloop_estiloc_prom.sh
cont=0
sum=0
echo "Ingrese la cantidad de num: "
read n

for((i=1;i<=n; i++))
do
    echo "Elemento $i: "
    read num
    let sum=num+sum
    if [[ ! num == 0 ]]
    then
        let cont=cont+1
    fi
done

prom=0
let prom=sum/cont
echo "EL promedio es: $prom"

Ejemplo de for loop estilo c para obtener el número mayor de un conjunto de números ingresados por el usuario:

#!/usr/bin/env bash
# File: forloop_max.sh
max_=0
echo "Ingrese la cantidad de num: "
read n

for((i=1;i<=n; i++))
do
    echo "Elemento $i: "
    read num
    if (( num > max_ ))
    then
        max_=$num
        echo $max_
    fi
done

echo "EL mayor es: $max_"


Ejemplo de for loop estilo c para obtener el número menor de un conjunto de números ingresados por el usuario:

#!/usr/bin/env bash
# File: forloop_min.sh
min=1000
echo "Ingrese la cantidad de num: "
read n

for((i=1;i<=n; i++))
do
    echo "Elemento $i: "
    read num
    if [[ num < min ]]
    then
        let min=num
    fi
done

echo "El menor es: $min"


Ejemplo de while loop con operador lógico mayor que:

#!/usr/bin/env bash
# File: whileloop.sh
count=3
while [[ $count -gt 0 ]]
do
echo "count is equal to $count"
let count=$count-1
done

Ejemplo de while loop para calcular factorial de un número ingresado por el usuario:

#!/usr/bin/env bash
# File: whileloop_factorial.sh
counter=$1
factorial=1
while [[ $counter > 0 ]]
do
   factorial=$(( $factorial * $counter ))
   counter=$(( $counter - 1 ))
done
echo "El factorial es $factorial"


Ejemplo de for loops anidados:

#!/usr/bin/env bash
# File: nestedloops.sh
for number in {1..3}
do
    for letter in a b
    do
        echo "number is $number, letter is $letter"
    done
done

Ejemplo de for loops anidados para crear un rectángulo en la terminal:

#!/usr/bin/env bash
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
        then
            echo -n "*"
        else
            echo -n " "
        fi  
    done
    printf "\n"
done


Ejemplo de funciones sencillas:

#!/usr/bin/env bash
# File: hello.sh
function hello {
    echo "Hello"
}
hello
hello
hello 

#!/usr/bin/env bash
# File: ntmy.sh
function ntmy {
    echo "Nice to meet you $1"
}

Ejemplo de funciones para calcular la suma de un conjunto de números:

#!/usr/bin/env bash
# File: addseq.sh
function addseq2 {
    sum=0
    for element in $@
    do
        let sum=sum+$element
    done

    echo $sum
}







