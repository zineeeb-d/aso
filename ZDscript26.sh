#!/bin/bash


find . -type f -perm -002 -exec ls -l {} \; | awk '{print $9}' > archivos_peligrosos.txt
