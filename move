#!/usr/bin/env bash

if [[ "$#" -lt 1 ]]; then
    echo "Missing Parameters"
    exit 1

elif [[ -d ../books/"$1" ]]; then
    echo "The directory "$1" already exists"
    mv -v *pdf ../books/"$1"/

else
    mkdir -p "$1"
    mv -v *pdf ../"$1"
    mv -v ./"$1" ../books/"$1"
fi

exit 0

