#!/bin/bash

grep . --with-filename --line-number itinerarios_clean/* | iconv -f latin1 -t utf-8 | sed s/"itinerarios_clean\\/itinerario_[[:digit:]]\+_\([[:digit:]]\+\)_clean:\([[:digit:]]\+\):\(.\+\)"/"INSERT INTO \`onibusrecife\`.\`searchstreet_itinerario_parada\` (\`id\`, \`itinerario_id\`, \`parada_id\`, \`parada_literal\`, \`ordem\`) VALUES (NULL, '\1', NULL, '\3', '\2');"/ 

