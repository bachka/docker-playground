#!/usr/bin/env sh

tag=latest
docker run -p 4000:80 -d docker-registry.intrafind.net/intrafind/friendly-hello:$tag