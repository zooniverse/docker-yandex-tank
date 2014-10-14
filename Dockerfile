FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y -q install python-software-properties software-properties-common && \
    add-apt-repository ppa:yandex-load/main && \
    apt-get update && \
    apt-get -y -q install yandex-load-tank-base && \
    apt-get -y remove python-software-properties software-properties-common && \
    apt-get -y autoremove && apt-get clean

ENTRYPOINT /usr/bin/yandex-tank
