#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-ShA256 $1
