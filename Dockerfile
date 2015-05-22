FROM debian:jessie
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN echo "deb http://ftp.debian.org/debian experimental main contrib non-free" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y etcd
EXPOSE 4001 7001 2379 2380
ENTRYPOINT /usr/bin/etcd --listen-client-urls 'http://0.0.0.0:2379,http://0.0.0.0:4001'
