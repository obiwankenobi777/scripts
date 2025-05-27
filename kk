#!/usr/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Missing parameters"
    exit 1
fi

if [[ $# -gt 1 ]]; then
    gcc -std=c17 -o "$1" "$1".c "$2".c && ./"$1"
    exit

    else 
        if [[ -f $1.c ]]; then
            gcc -std=c17 -o "$1" "$1.c" && ./"$1"
            exit 
        fi

        if [[ -f $1.cpp ]]; then
            g++ -std=c++20 -o "$1" "$1.cpp" && ./"$1"
            exit
        fi
fi
