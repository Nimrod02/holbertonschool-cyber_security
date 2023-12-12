#!/bin/bash
sudo whois $1 | grep "Registrant\|Admin\|Tech" >> $1.csv
