#!/bin/sh

LUAROCKS_VERSION=$1

LUAROCKS_SRC="./luarocks"

mkdir -p $LUAROCKS_SRC

curl -L "https://github.com/luarocks/luarocks/archive/v$LUAROCKS_VERSION.tar.gz" | tar zxf - -C $LUAROCKS_SRC --strip-components=1

cd $LUAROCKS_SRC

./configure --with-lua-include=/usr/local/include

make bootstrap

