#!/bin/bash
< /dev/urandom tr -dc '[:graph:]' | head -c "${1}"; echo  
