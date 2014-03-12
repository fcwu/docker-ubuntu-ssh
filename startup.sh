#!/bin/bash

mkdir /var/run/sshd

# create an ubuntu user
PASS=ubuntu
echo "User: ubuntu Pass: $PASS"
useradd --create-home --shell /bin/bash --user-group --groups adm,sudo ubuntu
echo "ubuntu:$PASS" | chpasswd

/usr/sbin/sshd
cd /tty.js && node ./tty-me.js --daemonize

while [ 1 ]; do
    /bin/bash
done