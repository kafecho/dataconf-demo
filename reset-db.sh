docker-compose stop 
docker-compose rm -f
docker volume rm dataconf-demo_db
docker-compose up &
