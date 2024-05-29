#!/bin/bash
sudo nmap -sM -phttp,https,ftp,ssh,telnet -v $1