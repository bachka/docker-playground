# Wordpress test instance from bitnami with docker-compose

###Pull all from docker hub
```
docker pull bitnami/wordpress
cd repos-privat/docker-playground/wordpress/
```

###Get newest docker-compose.yml
```
curl -LO https://raw.githubusercontent.com/bitnami/bitnami-docker-wordpress/master/docker-compose.yml
```

### Run all
```
docker-compose up -d
```

### If network used

```
docker rm -f $(docker ps -aq)
netstat -pna | grep 443
kill PROCESS_ID
```

### to stop
```
docker-compose down
```

### to remove volume with
```
docker-compose down -v
```