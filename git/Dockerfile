#written by stonepresto
# references:
#   - https://hub.docker.com/_/alpine/
#   - https://www.linux.com/learn/how-run-your-own-git-server
#   - https://www.digitalocean.com/community/tutorials/how-to-set-up-a-private-git-server-on-a-vps
#   - https://docs.docker.com/get-started/part2/#define-a-container-with-dockerfile
#   - https://github.com/jkarlosb/git-server-docker/blob/master/Dockerfile
#     > this was the easiest way to find out how to install the git server on alpine
#   - http://blog.zot24.com/tips-tricks-with-alpine-docker/
#   - https://wiki.alpinelinux.org/wiki/Setting_up_a_ssh-sever

# Alpine Linux is a lightweight solution for a base image
# MySQL on Alpine: 36.8MB  ... Ubuntu: 145MB (https://hub.docker.com/_/alpine
FROM alpine:latest

# Set working dir
WORKDIR /git-server

# Copy scripts to server dir
ADD ./entrypoint.sh /git-server

# Install pre-reqs [git, ssh], use --no-cache to not cache the index on the container
RUN apk add --no-cache\
  # setup git, ssh
  openssh git &&\
  which sshd &&\

  #create admin repo
  mkdir -p /git-server/repositories/admin.git &&\
  cd /git-server/repositories/admin.git &&\
  git init --bare --shared=true &&\
  cd / &&\
  chmod -Rf 777 /git-server/repositories &&\

  # add admin user
  adduser admin -D -h /git-server/repositories/ &&\
  echo -e "empiredidnothingwrong\nempiredidnothingwrong" | passwd admin
  
# Expose SSH (no UI, so no 4443)
EXPOSE 22

ENTRYPOINT ["/git-server/entrypoint.sh"]
