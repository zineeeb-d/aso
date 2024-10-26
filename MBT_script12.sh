#!/bin/bash

hora=$(date +%H)

if [ "$hora" -ge 8 ] && [ "$hora" -lt 15 ]; then
    echo "Buenos días"
elif [ "$hora" -ge 15 ] && [ "$hora" -lt 20 ]; then
    echo "Buenas tardes"
else
    echo "Buenas noches"
fi
