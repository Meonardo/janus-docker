
Originally forked from https://github.com/atyenoria/janus-webrtc-gateway-docker

---

# Change log

1. Update `pcre-8.41.tar.gz` download URL to this repo;
2. Change `libmicrohttpd` download source to GitHub repo;
3. Change janus default install path to `/opt/janus`;
4. Replace `janus.plugin.videoroom.jcfg` & `janus.transport.http.jcfg` janus config files to docker image;
5. Update `libsrtp` to version `2.4.2`;
6. Update `janus-gateway` to version `0.12.1`;
7. Support HTTPS(**Self signed certs**).

# How to use

```
1. git clone https://github.com/Meonardo/janus-docker.git && cd janus-docker
2. make build
3. make run
```

# Change config file
1. cd to the `janus-docker` folder;
2. change the `janus.plugin.videoroom.jcfg` config file content if need;
3. run `make start` to start the container.

