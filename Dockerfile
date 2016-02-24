FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y -q install \
        python-software-properties \
        software-properties-common \
        python-pip \
        build-essential \
        libxml2-dev \
        libxslt1-dev \
        python-dev \
        zlib1g-dev && \
    add-apt-repository ppa:yandex-load/main && \
    pip install yandextank && \
    apt-get update && \
    apt-get -y -q install phantom phantom-ssl && \
    apt-get -y remove \
        python-software-properties \
        software-properties-common \
        python-pip \
        build-essential \
        libxml2-dev \
        libxslt1-dev \
        python-dev \
        zlib1g-dev && \
    apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT /usr/bin/yandex-tank
