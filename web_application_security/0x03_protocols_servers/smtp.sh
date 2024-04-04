#!/bin/bash
(echo -e "EHLO localhost\nQUIT\n" | openssl s_client -connect smtp.example.com:25 -starttls smtp 2>/dev/null) | grep -q "250-STARTTLS" && echo "STARTTLS is configured." || echo "STARTTLS not configured."
