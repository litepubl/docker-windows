docker run -v first_ssh:/root/.ssh --name helper busybox true
docker cp ./.ssh/. helper:/root/.ssh/
docker rm helper
docker-compose exec php ls /root/.ssh
docker-compose exec php chmod 600 /root/.ssh/id_rsa
docker-compose exec php ssh git@github.com
