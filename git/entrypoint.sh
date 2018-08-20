#!/bin/ash
# references:
#   - https://github.com/sickp/docker-alpine-sshd/blob/master/versions/7.5-r2/rootfs/entrypoint.sh

ssh-keygen -A

exec /usr/sbin/sshd -D
