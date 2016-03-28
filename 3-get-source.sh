#!/bin/bash

mkdir -p $GOPATH/src
cd $GOPATH/src
mkdir github.com
cd github.com
git clone --recursive https://github.com/XiaoMi/open-falcon.git
