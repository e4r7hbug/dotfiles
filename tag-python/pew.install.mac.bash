#!/bin/bash
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export LDFLAGS="-L/usr/local/opt/openssl/lib"

pew install $@
