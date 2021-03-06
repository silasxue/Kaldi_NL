#!/bin/bash

# progress, total, width, stage

progressbar() {
    if [ $1 -eq -1 ]; then
        printf "\r  %*s\r" "$3"
    else
        i=$(($1*$3/$2))
        j=$(($3-i))
        printf "\r[%*s" "$i" | tr ' ' '#'
        printf "%*s] $4 ($1/$2)\r" "$j"
    fi
};

progressbar "$1" "$2" "$3" "$4"