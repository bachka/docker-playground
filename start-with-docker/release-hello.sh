#!/usr/bin/env sh

tag=latest
PASSWORD=$1

#docker login docker-registry.intrafind.net --username sitesearch --password $PASSWORD
#docker build -t friendly-hello:latest .
#docker tag friendly-hello:$tag docker-registry.intrafind.net/intrafind/friendly-hello:$tag
docker build --pull -t docker-registry.intrafind.net/intrafind/friendly-hello:$tag  .
docker push docker-registry.intrafind.net/intrafind/friendly-hello:$tag