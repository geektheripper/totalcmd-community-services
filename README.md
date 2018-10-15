# Totalcmd Community Services

this project deployed via [geektr-cloud/deployer](https://github.com/geektr-cloud/deployer)

## Deploy

```bash
# update (init) project to local enviroment
# when first run, it will init data directory and secrets directory
deployer update geektheripper/totalcmd-community-services

# edit secrets files
# vim xxxxxx

# up the services
deployer up geektheripper/totalcmd-community-services
```

## Other Operation

```bash
# reload web server
./caddy-reload.sh

# ftp manage
docker-compose exec ftp ./passwd.sh <username>
docker-compose exec ftp ./useradd.sh <username>
docker-compose exec ftp ./userdel.sh <username>
```
