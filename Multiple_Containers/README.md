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

**Docker images**
![Docker images](multiple_container_data_doc/mysql_image.jpg)

**Docker Container**
![Docker container](multiple_container_data_doc/mysql_container.jpg)

## Attach a bash shell 

- To attach a bash shell to the running container, you can use the

```bash
docker exec -it meeting-app-mysql bash
```

- `docker exec`: Runs a new command inside the running container.
- `-i`: Keeps the standard input (STDIN) open, allowing you to interact with the container.
- `-t`: Allocates a pseudo-TTY, providing a more interactive shell experience.
- `meeting-app-mysql`: Specifies the name of the container to attach to.
- `bash`: Specifies the command to run inside the container (in this case, the bash shell).

```bash
gitpod /workspace/docker-fundamentals/Multiple_Containers (master) $ docker exec -it meeting-app-mysql bash
bash-5.1# 
```

## MYSQL

**Login**

Once you're inside the container, you can run commands like mysql -uroot -p to access the MySQL database, or <br>
explore the file system using ls, cd, etc.

`mysql -uroot -proot`
- show databases;
- use mysql;
- select Host, User from user;

### Create a Database

```sql
CREATE DATABASE meeting_app_db;
```
- This will create a new database named meeting_app_db inside the MySQL instance running in the container.

***To verify,***

- SHOW DATABASES;

![DATABASES](multiple_container_data_doc/meeting_app_db.jpg)

**Create a user identified by admin and GRANT ALL PRIVILEGES**

- This will create a new user named `sword2yk_user` with the password admin. The '%' specifies that the user can connect from any host.
- This will grant the `sword2yk_user` user all privileges (SELECT, INSERT, UPDATE, DELETE, etc.) on the meeting_app_db database.

**CREATE**
```sql
CREATE USER 'sword2yk_user'@'%' IDENTIFIED BY 'admin1234';
```

**GRANT**
```sql
GRANT ALL PRIVILEGES ON meeting_app_db.* TO 'sword2yk_user'@'%';
```

**REVOKE**
```sql
REVOKE ALL PRIVILEGES ON meeting_app_db.* FROM 'sword2yk_user'@'%';
```
- This will grant only the SELECT, INSERT, UPDATE, and DELETE privileges on the `meeting_app_db` database to the `sword2yk_user user`.
```sql
GRANT SELECT, INSERT, UPDATE, DELETE ON meeting_app_db.* TO 'sword2yk_user'@'%';
```


**Login to the database with the new user**
- This will log you in to the `meeting_app_db` database as the `sword2yk_user` user with the password `admin`.
- mysql -u sword2yk_user -p- or
- mysql -u sword2yk_user -p meeting_app_db or
- mysql -u sword2yk_user -padmin1234 meeting_app_db
- show databases;