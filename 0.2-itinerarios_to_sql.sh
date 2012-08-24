#!/bin/bash

sed s/"\([[:digit:]]\+\):\([[:digit:]]\+\):\([[:alnum:]]\+\):.\+"/"INSERT INTO \`onibusrecife\`.\`searchstreet_itinerario\` ( \`numero\` , \`nome\` , \`onibus_id\` ) VALUES ( '\2', '\3', '\1');"/ lista_itinerarios.txt
