#!/bin/bash
sudo nmap -sX -p440,450 --open --reason -v ($1)