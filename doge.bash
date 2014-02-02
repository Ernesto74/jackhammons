#!/bin/bash  

sudo apt-get update

sudo apt-get install build-essential libcurl4-openssl-dev

wget http://sourceforge.net/projects/cpuminer/files/pooler-cpuminer-2.3.2.tar.gz

tar -xzf pooler-cpuminer-2.3.2.tar.gz

cd cpuminer-2.3.2/

./configure CFLAGS="-O3"

make

./minerd --url=stratum+tcp://teamdoge.com:3333 --userpass=jackchammons.user:password
