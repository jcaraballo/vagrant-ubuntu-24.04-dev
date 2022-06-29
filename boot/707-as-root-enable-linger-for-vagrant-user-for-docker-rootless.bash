#!/usr/bin/env bash

echo 'Enabling systemctl linger for vagrant user'
loginctl enable-linger vagrant
