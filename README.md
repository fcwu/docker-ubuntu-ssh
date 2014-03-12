docker-ubuntu-ssh
=========================

From Docker Index

```
docker pull dorowu/ubuntu-ssh-ttyjs
```

Build yourself
```
git clone https://github.com/fcwu/docker-ubuntu-ssh.git
docker build --rm -t doro/ubuntu-ssh docker-ubuntu-ssh
docker run -i -t --entrypoint=/bin/bash -p 3000:3000 doro/ubuntu-ssh
```

Browse http://127.0.0.1:3000/vnc.html

<img src="https://raw.github.com/fcwu/docker-ubuntu-ssh/master/screenshots/ttyjs.png" width=400/>
