#!/usr/bin/env bash

set -euo pipefail 

if [[ "$#" -ne 1 ]]; then
    printf "Missing Parameters. 1 parameter is required.\n" >&2
    exit 1
fi

checkDirectory() {
    if [[ "$(pwd -P)" != "$HOME/downloads" ]]; then
        echo "Now, I'm Here -> $PWD"
        echo "You are in the wrong place" >&2
        return 1
    fi
}

getPDFs() {
    shopt -s nullglob

    local files=( *.pdf )
    local count="${#files[@]}"

    shopt -u nullglob

    if [[ "$count" -eq 0 ]]; then
        echo "There isn't PDFs files here."
        return 1
    fi
}

movePDFs() {
    getPDFs

    if [[ -d ../books/"$1" ]]; then
        echo "The directory '$1' already exists"
        mv -v *.pdf ../books/"$1"
    else
        mkdir -p ../books/"$1"/
        mv -v *.pdf ../books/"$1"
    fi
    return 0
}

main() {
    checkDirectory
    movePDFs "$1"
    exit 0
}

main "$@"

