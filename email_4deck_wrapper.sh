#!/bin/bash

if [ $1 ]; then
    number_of_rounds=$1
else
    echo "usage './email_4deck_wrapper <#rounds>"
    exit 1
fi

for i in $(seq 1 $number_of_rounds); do
    ./email_4deck.sh $i
done
