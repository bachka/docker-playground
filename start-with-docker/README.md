# Run the app

Build docker image:

```
docker build -tag docker-registry.intrafind.net/intrafind/friendly-hello:latest .
```

Run the app, mapping your machine’s port 4000 to the container’s published port 80 using -p:

```
docker run -p 4000:80 friendly-hello
```

You should see a message that Python is serving your app at http://0.0.0.0:80. But that message is coming from inside the container, which doesn’t know you mapped port 80 of that container to 4000, making the correct URL http://localhost:4000.

Go to that URL in a web browser to see the display content served up on a web page.

You can also use the curl command in a shell to view the same content.

```
curl http://localhost:4000
```

To stop and remove:

```
docker stop friendly-hello && docker rm friendly-hello
```

Now let’s run the app in the background, in detached mode:

```
docker run -d -p 4000:80 friendly-hello
```

Show running or restarted containers:

```
docker ps
docker ps -a
```

Pull and run container:

```
docker pull docker-registry.intrafind.net/intrafind/friendly-hello:latest
docker run -p 4000:80 docker-registry.intrafind.net/intrafind/friendly-hello:latest
```

Logs from container:

```
docker logs friendly-hello
docker logs -f friendly-hello
```

## Cheat sheets from https://docs.docker.com

```
## List Docker CLI commands
docker
docker container --help

## Display Docker version and info
docker --version
docker version
docker info

## Execute Docker image
docker run hello-world

## List Docker images
docker image ls

## List Docker containers (running, all, all in quiet mode)
docker container ls
docker container ls --all
docker container ls -aq

docker build -t friendlyhello .  # Create image using this directory's Dockerfile
docker run -p 4000:80 friendlyhello  # Run "friendlyhello" mapping port 4000 to 80
docker run -d -p 4000:80 friendlyhello         # Same thing, but in detached mode
docker container ls                                # List all running containers
docker container ls -a             # List all containers, even those not running
docker container stop <hash>           # Gracefully stop the specified container
docker container kill <hash>         # Force shutdown of the specified container
docker container rm <hash>        # Remove specified container from this machine
docker container rm $(docker container ls -a -q)         # Remove all containers
docker image ls -a                             # List all images on this machine
docker image rm <image id>            # Remove specified image from this machine
docker image rm $(docker image ls -a -q)   # Remove all images from this machine
docker login             # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
docker push username/repository:tag            # Upload tagged image to registry
docker run username/repository:tag                   # Run image from a registry


docker stack ls                                            # List stacks or apps
docker stack deploy -c <composefile> <appname>  # Run the specified Compose file
docker service ls                 # List running services associated with an app
docker service ps <service>                  # List tasks associated with an app
docker inspect <task or container>                   # Inspect task or container
docker container ls -q                                      # List container IDs
docker stack rm <appname>                             # Tear down an application
docker swarm leave --force      # Take down a single node swarm from the manager
```