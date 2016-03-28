#!/bin/bash

#yum install -y redis
#yum install -y mysql-server

docker run --name of-redis -p 6379:6379 -d redis
docker run --name of-mysql -e MYSQL_ROOT_PASSWORD='' -e MYSQL_ALLOW_EMPTY_PASSWORD=1 -p 3306:3306 -d mysql
