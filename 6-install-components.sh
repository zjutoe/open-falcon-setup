#!/bin/bash

TARGET=$HOME/open-falcon
mkdir -p $TARGET/tmp/
cd ~
cp `find workspace/src/github.com/ -name "falcon-*.tar.gz"` $TARGET/tmp/
cp workspace/src/github.com/open-falcon/query/graph_backends.txt $TARGET/query
cp -a workspace/src/github.com/open-falcon/dashboard $TARGET/

cd $TARGET

for x in `find ./tmp/ -name "*.tar.gz"`;do 
    app=`echo $x|cut -d '-' -f2`; 
    mkdir -p $app; 
    tar -zxf $x -C $app; 
    cp $app/cfg.example.json $app/cfg.json     
done

cp control $TARGET
