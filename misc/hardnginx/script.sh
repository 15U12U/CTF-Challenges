#!/bin/bash

output=$(grep -i "server_tokens" /etc/nginx/nginx.conf)

if echo $output | grep -q "off"; then
    chmod 0644 /home/ctf-user/flag.txt
fi

