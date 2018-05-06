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

ln -sf /usr/local/bin/luajit-2.1.0-beta3 /usr/local/bin/luajit

cd $OLD_CW
