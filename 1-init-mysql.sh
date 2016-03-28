# open-falcon所有组件都无需root账号启动，推荐使用普通账号安装，提升安全性。此处我们使用普通账号：work来安装部署所有组件
# 当然了，使用yum安装依赖的一些lib库的时候还是要有root权限的。
export HOME=/home/work
export WORKSPACE=$HOME/open-falcon
mkdir -p $WORKSPACE
cd $WORKSPACE

git clone https://github.com/open-falcon/scripts.git     
cd ./scripts/
mysql -h 127.0.0.1 -u root < db_schema/graph-db-schema.sql
mysql -h 127.0.0.1 -u root < db_schema/dashboard-db-schema.sql

mysql -h 127.0.0.1 -u root < db_schema/portal-db-schema.sql
mysql -h 127.0.0.1 -u root < db_schema/links-db-schema.sql
mysql -h 127.0.0.1 -u root < db_schema/uic-db-schema.sql
