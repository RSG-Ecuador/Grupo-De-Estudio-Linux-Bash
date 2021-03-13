# Input de archivo
echo "Archivo a procesar > $@"
echo "Numero de argumentos: $#"

# Conteo de secuencias, separación de malas secuencias
numero_secuencias=$(grep -c '^@SRR098026' $@)
grep -B1 -A2 NNNNNNNNNN $@ > malas_lecturas.fastq
malas=$(cat malas_lecturas.fastq | wc -l)
echo "Número de malas lecturas: $malas"

# Búsqueda de patrones
echo "Desea buscar patrones (y/n): "
read d

if [[ $d == "y" ]]; then
    echo "Los patrones se guardarán en: patrones.txt"
    echo -e 'ACTG\nCCCCC\nNNNCNNN\nNNNGNNN\nTTTT\nTATA\nAAA' > patrones.txt
    grep -f patrones.txt $@ > busqueda.txt
    echo "Búsqueda de patrones guardada en: busqueda.txt"
else
    echo "ok :P"
fi

# Mensaje final
echo "Fin :)"