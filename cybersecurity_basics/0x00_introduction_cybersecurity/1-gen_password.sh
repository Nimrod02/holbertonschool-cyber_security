#!/bin/bash
fold -w1 /dev/urandom | tr -dc '[:alnum:]' | head -n 10 -c "$1";
