#!/bin/bash
sudo nmap -sF -p80,85 -f --host-timeout 2 ($1)