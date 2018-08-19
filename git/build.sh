sudo docker build -t git-server .
sudo docker run --entrypoint "/git-server/entrypoint.sh" --name=git-server -p 22:22 git-server 2&>/dev/null &
