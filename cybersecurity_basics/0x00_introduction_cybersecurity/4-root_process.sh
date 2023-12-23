#!/bin/bash
ps -u $1 -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,comm | awk '$2 > 0 && $3 > 0'
