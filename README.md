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

### Usage

Use environment variables to overwrite defaults

Variable | Default | Description
--- | --- | ---
USER | ubuntu | username allowed to login
PASS | ubuntu | password for login


Browse http://127.0.0.1:3000/vnc.html

<img src="https://raw.github.com/fcwu/docker-ubuntu-ssh/master/screenshots/ttyjs.png" width=400/>
