#!/bin/bash

figlet Slow

text=$(<texto.txt)
frases=("O dia estava lindo." "O sol brilhava no céu." "As aves cantavam.")

for frase in "${frases[@]}"; do
    if grep -o -i -q "$frase" <<< "$text"; then
        echo ------------------------
        echo "$frase"
    fi
done
