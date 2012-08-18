#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Este programa requer dois parametros: o numero da linha e o numero do itinerario."
	echo ""
	echo "Exemplo:"
	echo "         $0 522 8012" 
	exit
fi
echo "Baixando http://200.238.84.28/site/consulta/itinerarios.asp?linha=`echo $1`&nomeitinerario=`echo $2`"
wget "http://200.238.84.28/site/consulta/itinerarios.asp?linha=`echo $1`&nomeitinerario=`echo $2`" --output-document="itinerario_`echo $1`_`echo $2`_raw"
