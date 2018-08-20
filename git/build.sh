sudo docker build -t git-server .
sudo docker run --name=git-server -p 22:22 git-server &
