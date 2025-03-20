# MYSQL

## HUB DOCKER

[Docker Hub](https://hub.docker.com)

On hub docker website search for mysql repositories.<br>
MySQL is a widely used, open-source relational database management system (RDBMS).

**To pull mysql repositories**

```bash
docker pull mysql
```

**Start a mysql server instance**

```bash
$ docker run --name some-mysql -e   MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag```
```
where some-mysql is the name you want to assign to your container, my-secret-pw is the password to be set for the MySQL root user and tag is the tag specifying the MySQL version you want. 

```$ docker exec -it some-mysql bash```

# LAB
Create a folder for sql data ```sql-date```

## Create a MySQL server in a container 

```bash
    docker run --name sword2yk-sql-container -d -p 3306:3306 -p 33060:33060 -v ./MySQL/sql-data:/var/lib/mysql -e   MYSQL_ROOT_PASSWORD=root mysql:8
```
### **Docker command breakdown step by step**

## **Breakdown:**

| **Option** | **Explanation** |
|------------|---------------|
| `docker run` | Starts a new container from a specified image. |
| `--name sword2yk-sql-container` | The container name `sword2yk-sql-container`. This makes it easier to reference later. |
| `-d` | Runs the container in detached mode (in the background). |
| `-p 3306:3306` | Maps port **3306** inside the container (default MySQL port) to **3306** on the host machine, allowing external access. |
| `-p 33060:33060` | Maps port **33060** inside the container (MySQL X Protocol, used by MySQL Shell and other applications) to **33060** on the host. |
| `-v ./MySQL/sql-data:/var/lib/mysql` | Mounts the local directory `./MySQL/sql-data` to `/var/lib/mysql` inside the container. This ensures MySQL data persists even if the container is removed or restarted. |
| `-e MYSQL_ROOT_PASSWORD=root` | Sets the MySQL root user password to `root`. The `-e` flag defines environment variables inside the container. |
| `mysql:8` | Specifies that the container should use the `mysql` image, version `8`. If not available locally, Docker pulls it from Docker Hub.

1. Creates and runs a MySQL 8 database container in the background.
2. Exposes MySQL on ports 3306 and 33060, making it accessible from the host machine.
3. Persists data in ./MySQL/sql-data to prevent loss when the container stops.
4. Sets the root password for MySQL authentication.

```docker ps -a```

d --> detach
p --> port forward
v --> vol

## To interect with the container
docker exec -it sword2yk-sql-container bash

## mySQL
mysql: mysql -u root -p
mysql: show databases;
mysql: use mysql
mysql: show tables;
mysql: describe user;
mysql: select host, User from user;