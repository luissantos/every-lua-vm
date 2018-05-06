#!/bin/sh
set -e 

SRC_DIR="./lua"

mkdir -p $SRC_DIR


LUA_VERSION=$1

curl -L "https://www.lua.org/work/lua-$LUA_VERSION.tar.gz"  | tar zxf - -C $SRC_DIR --strip-components=1

OLD_CW=$(pwd)

cd $SRC_DIR

make linux
make install

cd $OLD_CW
