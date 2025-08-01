#!bin/bash
iptables -P INPUT DROP
iptables -A INPUT -m conntrack --cstate ESTABLISHED,RELATED -p tcp -dport 22 -j ACCEPT
