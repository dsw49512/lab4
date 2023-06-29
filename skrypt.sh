#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  echo "Dzisiejsza data: $(date)"
fi

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  	if [ -n "$2" ]; then
		count="$2"
	else
		count=100
	 fi
 for ((i=1; i<=count; i++))
  do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    echo "Data: $(date)" >> "$filename"
  done
fi

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
        if [ -n "$2" ]; then
                count="$2"
        else
                count=100
         fi
 for ((i=1; i<=count; i++))
  do
    dir = "error${i}"
    mkdir -p "$dir"
    filename="${dir}/error{i}.txt"
    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    echo "Data: $(date)" >> "$filename"
  done
fi
if [[ "$1" == "--init" || "$1" == "-i" ]]; then
	git clone https://github.com/dsw49512/lab4
	export PATH = "$PWD:$PATH"
	 echo "Repozytorium jest sklonowane do bieżącego katalogu."
    echo "Ścieżka do repozytorium jest dodana. Jest w zmiennej środowiskowej PATH."
fi
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
	echo "Wybierz funkcje"
	echo "--logs/-l (liczba)"
	echo "--error/-e (liczba)"
	echo "--date/-d"
else 
	echo "Nie prawidłowa opcja, wpisz --help/-h"
fi
