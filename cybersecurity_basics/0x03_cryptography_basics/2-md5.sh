#!/bin/bash
echo $(echo -n $1 | md5sum | cut -c-3)2 > 2_hash.txt
