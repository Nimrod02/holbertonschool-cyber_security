#!/bin/bash
groupadd $1 
chown :$1 $2 
chown g+rx $2
