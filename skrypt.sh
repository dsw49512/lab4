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
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
	echo "Wybierz funkcje"
	echo "--logs/-l (liczba)"
	echo "--date/-d"
else 
	echo "Nie prawidłowa opcja, wpisz --help/-h"
fi
