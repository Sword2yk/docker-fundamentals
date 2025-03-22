# Multiple Containers

## Docker images
docker images

## Docker containers

docker ps -a

```bash
docker run -d --name meeting-app-mysql \
  -p 3306:3306 \
  -p 33060:33060 \
  -v ./mysql-data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=root \
  mysql:8
```

### Let me explain what each part of the command does:

- `docker run`: Runs a new Docker container.
- `-d:` Detaches the container, running it in the background.
- `--name` meeting-app-mysql: Names the container "meeting-app-mysql".
- `-p` 3306:3306 and -p 33060:33060: Maps ports 3306 and 33060 on the host machine to the same ports in the container.
- `-v` /tmp/mysql-data:/var/lib/mysql: Maps the local folder /tmp/mysql-data to the /var/lib/mysql directory in the container.
- `-e` MYSQL_ROOT_PASSWORD=root: Sets the MYSQL_ROOT_PASSWORD environment variable to "root".
- `mysql:8`: Uses the official MySQL 8 image