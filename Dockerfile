# Используем облегченный образ Debian
FROM debian:10.8-slim

LABEL version="0.2"
LABEL description="Deploy image"

RUN set -eux; \
    apt-get update; \
    apt-get install -y \
        gnupg2; \
    echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list; \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367; \
	apt-get update; \
	apt-get install -y \
	    curl \
	    rsync \
	    zip \
	    ansible