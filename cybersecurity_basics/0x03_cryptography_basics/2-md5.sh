#!/bin/bash
echo $(echo -n $1 | md5sum | cut -c-32) > 2_hash.txt
