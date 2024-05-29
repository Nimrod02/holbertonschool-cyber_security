#!/bin/bash
sudo nmap --scanflags -oN custom_scan.txt -p$2 $1 >/dev/null 2>&1