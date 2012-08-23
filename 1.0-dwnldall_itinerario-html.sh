#!/bin/bash

while IFS=: read linha_num itinerario_num itinerario_nome linha_nome
do
#	echo -e "linha num: $linha_num"
#	echo -e "\tlinha_nome: $linha_nome"
#	echo -e "\titine_num: $itinerario_num"
#	echo -e "\t\titine_nom: $itinerario_nome"
	./baixar_itinerario.sh `echo $linha_num $itinerario_num`
done < lista_itinerarios.txt
