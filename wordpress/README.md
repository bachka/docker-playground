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