#!/usr/bin/env bash

set -euo pipefail 

if [[ "$#" -lt 1 ]]; then
    echo "Missing Parameters"
    exit 1
fi

checkDirectory() {
    echo "Now, I'm Here -> $PWD"

    if [[ "$(pwd -P)" != "$HOME/downloads" ]]; then
        echo "You are in the wrong place"
        return 1
    fi
}

movePDFs() {
    shopt -s nullglob

    local files=( *.pdf )
    local countFiles="${#files[@]}"

    if [[ -d ../books/"$1" ]]; then
        echo "The directory '$1' already exists"
        mv -v *.pdf ../books/"$1"/

    elif [[ "$countFiles" -gt 0 ]]; then
        mkdir -p ../books/"$1"/
        mv -v *.pdf ../books/"$1"/

    else 
        echo "There isn't PDFs files!"

    fi

    shopt -u nullglob
}

main() {
    checkDirectory
    movePDFs "$1"
    exit 0
}

main "$@"

