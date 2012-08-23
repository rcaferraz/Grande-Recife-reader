#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Este programa requer um parametros: o html de um itinerario." >&2
	echo "" >&2
	echo "Exemplo:" >&2
	echo "         $0 itinerario_522_8012_raw" >&2
	exit
fi


grep -A 1 "<td width=\"160\" height=\"25\"><font color=\"#000000\">" `echo $1` | grep -v "<td width=\"160\" height=\"25\"><font color=\"#000000\">" | grep -v "\--" | sed s/"[[:space:]]*"//
