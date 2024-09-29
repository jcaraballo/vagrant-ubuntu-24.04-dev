#!/usr/bin/env bash

# See https://docs.docker.com/engine/security/rootless/

cat << EOF
Installing uidmap (for docker rootless)
/etc/subuid and /etc/subgid should contain at least 65,536 subordinate UIDs/GIDs for the user, i.e.:
$ grep ^\$(whoami): /etc/subuid
theusername:100000:65536
$ grep ^\$(whoami): /etc/subgid
theusername:100000:65536
EOF

# We'll ensure dbus-user-session is already installed, then install the other dependencies
dpkg --get-selections | grep '^dbus-user-session\s*install$' && \
  apt -y install uidmap docker-ce-rootless-extras
