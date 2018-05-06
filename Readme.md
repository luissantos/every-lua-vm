# Every lua VM

This project aims to provide docker containers with lua and its derivatives installed.

Current supported versions:

* Lua 5.1 + LuaRocks
* Lua 5.2 + LuaRocks
* Lua 5.3 + LuaRocks
* Lua 5.4 (preview)
* LuaJit 2.0 + LuaRocks
* LuaJit 2.1 (preview)
* Moonscript 0.5 + Lua 5.2 + LuaRocks

All containers are based on alpine linux.

# Features

| Container | Lua | LuaRocks | Architectures
| --- |  :---: |  :---: | --- |
| luissantos/every-lua-vm:lua-5.1 | 5.1 | 2.4.4 | x64 |
| luissantos/every-lua-vm:lua-5.2 | 5.2 | 2.4.4 | x64 |
| luissantos/every-lua-vm:lua-5.3 | 5.3 | 2.4.4 | x64 |
| luissantos/every-lua-vm:lua-5.3 | 5.4 | none | x64 |
| luissantos/every-lua-vm:luajit-2.0 | 5.1 | 2.4.4 | x64 |
| luissantos/every-lua-vm:luajit-2.1 | 5.1 | none | x64 |


# Running

### Running REPL

    # Runs lua repl
    docker run -it luissantos/every-lua-vm:lua-5.3

### Executing a script

    # Lua hello hello
    echo 'print("Hellow World")' > helloworld.lua

    docker run -v$(pwd):/workspace/ -it luissantos/every-lua-vm:lua-5.3 helloworld.lua


# TODO

* ARM support
* Statically linked interpreters
* RaptorJIT support
* Terra support
* Titan support
* Ravi support
* Test suite
* Benchmarks
