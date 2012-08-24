#!/bin/bash

iconv -f latin1 -t utf-8 < lista_itinerarios.txt | sed s/"\([[:digit:]]\+\):\([[:digit:]]\+\):\([[:alnum:]]\+\):.\+"/"INSERT INTO \`onibusrecife\`.\`searchstreet_itinerario\` ( \`numero\` , \`nome\` , \`onibus_id\` ) VALUES ( '\2', '\3', '\1');"/
	
