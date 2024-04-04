#!/bin/bash
openssl s_client -connect <smtp_server_hostname>:25 -starttls smtp
