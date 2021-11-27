
Forked from https://github.com/atyenoria/janus-webrtc-gateway-docker

---

# Change log

1. Update `pcre-8.41.tar.gz` download URL to this repo;
2. Change `libmicrohttpd` download source to GitHub repo;
3. Change janus default install path to `/opt/janus`;
4. Replace `janus.plugin.videoroom.jcfg` & `janus.transport.http.jcfg` janus config files to docker image;
5. Update `libsrtp` to version `2.4.2`;
6. Update `janus-gateway` to version `0.11.5`;
7. Support HTTPS(Self signed certs NOT for production).

# How to use

```
1. git clone https://github.com/meonardo/janus-webrtc-gateway-docker.git && cd janus-webrtc-gateway-docker
2. make build
3. make run-mac
```

# Change config file
1. cd to the `$repo` folder;
2. change the `janus.plugin.videoroom.jcfg` config file content;
3. run `make start-mac` to start the container.

