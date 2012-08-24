#!/bin/sh

baixar_pagina ()
{
	wget http://200.238.84.28/site/consulta/itinerarios.asp
}

extrair_lista_options ()
{
	grep --regexp="<option\svalue\s*=\s*" itinerarios.asp > linhas_onibus_raw.txt 
}

remover_caracteres_invalidos ()
{
#	tr -cd '\11\12\15\40-\176' < linhas_onibus_raw.txt > linhas_onibus_raw_ascii
	iconv -f latin1 -t utf-8 < linhas_onibus_raw.txt > linhas_onibus_raw_ascii
}

remover_tags_html ()
{
	sed s/"[[:space:]]*<option value=\"\([0-9]\+\)\">[[:space:]]*\(.*\)<\/option>"/"\1:\2"/ linhas_onibus_raw_ascii | sort > linhas_onibus
}

extrair_lista_itinerarios ()
{
	grep --regexp="arrayitinerario\[[[:digit:]]\+\]\[[[:digit:]]\+\]" itinerarios.asp > itinerarios_raw.txt
}

remover_javascript ()
{
	sed s/"\(arrayitinerario\[2\]\[[[:digit:]]\+\][[:space:]]*=[[:space:]]*'[[:alnum:]]*';\)"/"\1\n"/g itinerarios_raw.txt > itinerarios_raw2
	sed s/"arrayitinerario\[[[:digit:]]\+\]\[[[:digit:]]\+\][[:space:]]*=[[:space:]]*"//g itinerarios_raw2 > itinerarios_raw3
	sed s/\'//g itinerarios_raw3 | sed s/";"/":"/g | sed s/":\$"// | sort > itinerarios_sem_as_linhas
}

gerar_lista_itinerarios ()
{
	join -t : itinerarios_sem_as_linhas linhas_onibus > lista_itinerarios.txt
}

limpeza ()
{
	rm itinerarios_raw.txt itinerarios_raw2 itinerarios_raw3 itinerarios.asp
	rm linhas_onibus_raw.txt linhas_onibus_raw_ascii
	rm itinerarios_sem_as_linhas
#	rm linhas_onibus
}


baixar_pagina
extrair_lista_options
remover_caracteres_invalidos
remover_tags_html
extrair_lista_itinerarios
remover_javascript
gerar_lista_itinerarios
limpeza

