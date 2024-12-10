#!/bin/bash
whois $1 | awk -F: '/Registrant/ || /Admin/ || /Tech/ {print $1 "," $2}' | head -n -1 > $1.csv
