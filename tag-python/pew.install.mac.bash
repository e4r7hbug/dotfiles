#!/bin/bash
PREFIX="$(brew --prefix openssl@1.1)"
export CPPFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"

pew install --reinstall $@
