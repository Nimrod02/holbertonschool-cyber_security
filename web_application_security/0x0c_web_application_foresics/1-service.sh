#!/bin/bash
grep 'pam_unix' /var/log/auth.log | cut -d'(' -f2 | cut -d':' -f1 | sort | uniq -c | sort -nr | head -1
