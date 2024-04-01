#!/bin/bash
echo $(echo -n "$1" | openssl rand -sha512) > 3-hash.txt
