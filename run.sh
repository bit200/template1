docker rm -f $(docker ps -a -q);
docker compose --project-name sess14-project -f docker-compose.yml -f docker-patch.yml --env-file .env.sess14 up -d;
# docker compose --project-name sess15-project -f docker-compose.yml --env-file .env.sess15 up -d


# docker compose stop --env-file .env.sess14

# docker compose -f docker-compose.yml --env-file .env.sess14 down
# docker compose -f docker-compose.yml --env-file .env.sess14 stop
# docker compose -f docker-compose.yml --env-file .env.sess14 kill

# docker compose restart sess14-main -f docker-compose.yml --env-file .env.sess14 up


# docker compose restart sess14-main


# docker kill sess14-main; docker start sess14-main
# docker exec -it sess14-main sh