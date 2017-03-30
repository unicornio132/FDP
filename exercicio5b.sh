#!/bin/bash
DIG=1; while (( $DIG != 0 )); do echo "Digite um salário";
read DIG; echo $DIG >> arquivo.txt; done;
clear; cat arquivo.txt | sort -rh | uniq | head -n3
