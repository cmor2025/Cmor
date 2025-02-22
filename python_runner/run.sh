#!/bin/bash
echo "root:$PASSWORD" | chpasswd
/usr/sbin/sshd -D -p 22223
