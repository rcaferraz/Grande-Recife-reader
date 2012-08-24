#!/bin/bash

grep . --with-filename --line-number itinerarios_clean/* | sed s/itinerarios_clean\\/// > testeOUT 
