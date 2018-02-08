del tests\_output\*.* /f /q
del tests\_output\debug\*.* /f /q
del logs\debug.log
cd docker
@cls
docker-compose exec php bash test.sh
cd ..