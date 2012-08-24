#!/bin/bash

grep . --with-filename --line-number itinerarios_clean/* | iconv -f latin1 -t utf-8 | sed s/"itinerarios_clean\\/itinerario_[[:digit:]]\+_\([[:digit:]]\+\)_clean:\([[:digit:]]\+\):\(.\+\)"/"\1:\2:\3"/ > testeOUT 
