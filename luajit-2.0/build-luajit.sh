#!/bin/sh
set -e 

SRC_DIR="./luajit"

mkdir -p $SRC_DIR


LUAJIT_VERSION=$1

curl -L "https://github.com/LuaJIT/LuaJIT/archive/v$LUAJIT_VERSION.tar.gz" | tar zxf - -C $SRC_DIR --strip-components=1

OLD_CW=$(pwd)

cd $SRC_DIR

make
make install

cd $OLD_CW
