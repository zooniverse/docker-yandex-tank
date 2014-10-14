docker-yandex-tank
==================

Docker container that runs [Yandex
Tank](https://github.com/yandex-load/yandex-tank). Examples:

    docker run -t --rm -v /path/to/load.ini:/load.ini zooniverse/yandex-tank
    docker run -t --rm -v /path/to/ammo.txt:/ammo.txt zooniverse/yandex-tank ammo.txt
