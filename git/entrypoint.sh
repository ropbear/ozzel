#!/bin/ash
# NOTE: I do not take credit for this small script. I had no idea why /usr/sbin/sshd -D was failing until
#	I realized the ssh-keygen was necessary after viewing the referenced document. This explained the
#	exit on error code 1 I was getting.
# references:
#   - https://github.com/sickp/docker-alpine-sshd/blob/master/versions/7.5-r2/rootfs/entrypoint.sh

ssh-keygen -A

exec /usr/sbin/sshd -D
