#!/bin/bash

export XDG_RUNTIME_DIR=/run/user/$(id -u)

/usr/bin/dockerd-rootless-setuptool.sh install && \
    echo 'export DOCKER_HOST=unix:///run/user/1000/docker.sock' >> $HOME/.bashrc && \
    systemctl --user enable docker

