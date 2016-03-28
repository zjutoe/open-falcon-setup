#!/bin/bash

# 安装virtualenv。需要root权限。
# sudo apt-get install -y libpython-dev python-virtualenv libmysqld-dev libmysqlclient-dev

# 安装依赖。不需要root权限、使用普通账号执行就可以。需要到dashboard的目录下执行。
cd $GOPATH/src/github.com/open-falcon/dashboard/ 
virtualenv ./env
./env/bin/pip install -r pip_requirements.txt
