#!/bin/bash
sudo iptables -A INPUT -p tcp -i eth0 --dport 80 -j ACCEPT
