#!/bin/bash

_dir=gdb-10.2
_root=$(pwd)
_host=$(uname -m)-$(uname -s)
_dest=$_root/$_host

echo "src dir is '$_dir'"
rm -rf $_dir
tar xf $_dir.tar.xz || exit 1

cd $_dir
echo "configure ..."
./configure --prefix=/ --target=x86_64-linux-gnu --enable-source-highlight=no || exit 3
make -j4 || exit 3
echo "install to '$_dest'"
make DESTDIR=$_dest install-strip || exit 3
cd ..

echo "done"

