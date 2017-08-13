#!/bin/bash

mkdir /var/run/sshd

# create an sudo-enabled user
echo "User: $USER Pass: $PASS"
useradd --create-home --shell /bin/bash --user-group --groups adm,sudo $USER
echo "$USER:$PASS" | chpasswd

/usr/sbin/sshd
node ./tty-me.js 2>/dev/null --daemonize

_term() {
  echo "Exiting!"
  exit 0;
}

trap _term SIGTERM
trap _term SIGINT

while [ 1 ]; do
    /bin/bash
done
