#!/bin/bash

# Agent
cd $GOPATH/src/github.com/open-falcon/agent
go get ./...
./control build
./control pack

# Transfer
# update common lib
cd $GOPATH/src/github.com/open-falcon/common
git pull

# compile
cd $GOPATH/src/github.com/open-falcon/transfer
go get ./...
./control build
./control pack

# Graph
# update common lib
# cd $GOPATH/src/github.com/open-falcon/common
# git pull

# compile
cd $GOPATH/src/github.com/open-falcon/graph
go get ./...
./control build
./control pack


# Query
# update common lib
# cd $GOPATH/src/github.com/open-falcon/common
# git pull

# compile
cd $GOPATH/src/github.com/open-falcon/query
go get ./...
./control build
./control pack

# HBS

cd $GOPATH/src/github.com/open-falcon/hbs
go get ./...
./control build
./control pack
