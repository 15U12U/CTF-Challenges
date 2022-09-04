#!/bin/bash

output=$(grep "<title>" /usr/share/nginx/html/index.html)

if echo $output | grep -q "Crypto"; then
    chmod 0644 /home/ctf-user/flag.txt
fi

