docker run --rm -v c:/OSPanel/domains/hub/docker-windows/.ssh:/ssh -v newhub_ssh:/data busybox cp /ssh/* /data/
cp /src/* /data
docker run --rm -v c:/Users:/data alpine ls /data
docker run -v newhub_ssh:/data --name helper busybox true
docker cp ./.ssh helper:/data
docker rm helper


 
docker cp ./.ssh/ 94e400c8bc9a:/root/.ssh/
docker-compose exec php ls /root/.ssh
docker exec 94e400c8bc9a ls /root/.ssh/
docker exec 94e400c8bc9a ls /root/.ssh

docker cp ./.ssh/. 94e400c8bc9a:/root/.ssh/
docker-compose exec php ls /root/.ssh
cd /root/.ssh
chmod 600 /root/.ssh/id_rsa
ssh git@gitlab.etpgpb.loc
