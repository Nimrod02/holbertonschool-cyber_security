#!/bin/bash
echo $(echo -n "$1" | openssl dgst -sha512)
