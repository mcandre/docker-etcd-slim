FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apk add --update wget && \
    wget --no-check-certificate https://github.com/coreos/etcd/releases/download/v2.2.2/etcd-v2.2.2-linux-amd64.tar.gz && \
    tar xzvf etcd-v2.2.2-linux-amd64.tar.gz && \
    rm etcd-v2.2.2-linux-amd64.tar.gz
EXPOSE 4001 7001 2379 2380
ENTRYPOINT ["/etcd-v2.2.2-linux-amd64/etcd", "--listen-client-urls", "http://0.0.0.0:2379,http://0.0.0.0:4001", "--advertise-client-urls", "http://0.0.0.0:2379,http://0.0.0.0:4001"]
