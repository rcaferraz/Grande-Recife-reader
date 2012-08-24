#!/bin/bash

for file in $(ls itinerarios_raw/ -1)
do
	filename=`echo $file | sed s/"\(itinerario_[[:digit:]]\+_[[:digit:]]\+\)_raw"/"\1_clean"/`
	echo $filename
	./itinerario-html_to_logradourolist.sh itinerarios_raw/$file > itinerarios_clean/$filename
done
