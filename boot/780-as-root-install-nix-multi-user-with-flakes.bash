#!/usr/bin/env bash

echo 'Install Nix multi-user' && \
sh <(curl -L https://nixos.org/nix/install) --daemon < /dev/null && \
echo 'Enable flakes' && \
echo 'experimental-features = nix-command flakes' >> /etc/nix/nix.conf

# If we're going to reboot there's no point of restarting the daemon
# systemctl restart nix-daemon.service

