#!/usr/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Missing parameters"
    exit 1
fi

if [[ $# -gt 1 ]]; then
    gcc -Wall -std=c23 -o "$1" "$1".c "$2".c && ./"$1"
    exit

elif [[ -f $1.c ]]; then
        gcc -Wall -std=c23 -o "$1" "$1.c" && ./"$1"
        exit 

elif [[ -f $1.cpp ]]; then
        g++ -Wall -std=c++23 -o "$1" "$1.cpp" && ./"$1"
        exit
fi
