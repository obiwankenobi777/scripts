#!/usr/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Input error"
    exit 1

elif [[ -f $1.c ]]; then
    gcc -Wall -Wextra -Wpedantic -O2 -std=gnu23 -o "$1" "$1".c
    exit

elif [[ -f $1.cpp ]]; then
    g++ -Wall -Wextra -Wpedantic -O2 -stdc=c++23 -o "$1" "$1".cpp
    exit
fi

echo "Arquivo $1.{c,cpp} não encontrado."
