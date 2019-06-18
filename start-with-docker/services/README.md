## Run your new load-balanced app

Before we can use the docker stack deploy command we first run:

```
docker swarm init
docker stack deploy -c docker-compose.yml friendly-hello-swarm
docker ps
docker service ls
docker stack services friendly-hello-swarm
docker service ps friendly-hello-swarm
```

## Scale the app

You can scale the app by changing the replicas value in docker-compose.yml, saving the change, and re-running the docker stack deploy command:

```
docker stack deploy -c docker-compose.yml friendly-hello-swarm
```


## Take down the app and the swarm

Take the app down with 

```
docker stack rm friendly-hello-swarm
```

Take down the swarm

```
docker swarm leave --force
```
