#!/bin/bash
whois $1 | awk -F: '/Registrant/ || /Admin/ || /Tech/ {gsub(/ /,"",$1); gsub(/ /,"",$2); print $1 "," $2}' | sed '$d' > $1.csv
