#!/bin/bash

#yum install -y redis
#yum install -y mysql-server


# redis
docker run --name of-redis -p 6379:6379 -d redis

# data only container for mysql
docker run -d -v /var/lib/mysql --name=of-data-mysql --entrypoint=/bin/echo mysql data-only container for mysql
# mysql container
docker run --name of-mysql --restart always -d --volumes-from=of-data-mysql -e MYSQL_ROOT_PASSWORD='' -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -p 3306:3306 -d mysql

