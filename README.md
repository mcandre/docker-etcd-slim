# docker-etcd-slim - a slim Docker container for an etcd server

# DOCKER HUB (Private)

https://registry.hub.docker.com/u/mcandre/docker-etcd-slim/

# ABOUT

docker-etcd-slim is a container for an etcd server, made smaller with a few techniques:

* Switch base image from debian to [alpine](https://hub.docker.com/_/alpine/).

# EXAMPLE

```
$ make
curl -L http://$(docker-machine ip default):2379/v2/keys/
{"action":"get","node":{"dir":true}}
docker images | grep mcandre/docker-etcd-slim | awk '{ print $(NF-1), $NF }'
34.9 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)
* [curl](http://curl.haxx.se/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
