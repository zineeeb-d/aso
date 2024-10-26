#!/bin/bash

last | egrep -o '^[^ ]+.*( [0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)' | awk '{print $1, $NF}'
