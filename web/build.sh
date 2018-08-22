{
sudo docker build -t web-server .
sudo docker run -v `pwd`/../scripts/admin:/scripts --name web-server -p 443:443 web-server > site.log &
} >> ../logs/startup.log 2>&1
