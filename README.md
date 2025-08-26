# docker-some-server
git clone https://github.com/andruxaster/docker-some-server/

cd docker-some-server

docker build -t andruxaster/docker-some-server .

mkdir -p /docker/mongodb/ && chmod 777 -R /docker/mongodb/

docker compose up -d
