#!/bin/bash

grep . --with-filename --line-number itinerarios_clean/* | sed s/"itinerarios_clean\\/itinerario_[[:digit:]]\+_\([[:digit:]]\+\)_clean:\([[:digit:]]\+\):\(.\+\)"/"\1:\2:\3"/ > testeOUT 
