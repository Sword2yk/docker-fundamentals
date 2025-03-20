ENDCDrop
ScgMeNe, ScgN
Worst RSSI, Alarm, Coverage, High traffic
Ue control
B1thre

CA combination
ENDC + 2CC NR CA



# MYSQL

## HUB DOCKER
hub.docker.com

search for mysql

```docker pull mysql```

```$ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag```


```$ docker exec -it some-mysql bash```

# LAB
Create a folder for sql data ```sql-date```

Create the container 

```docker run --name sword2yk-sql-container -d -p 3306:3306 -p 33060:33060 -v ./MySQL/sql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root mysql:8```

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