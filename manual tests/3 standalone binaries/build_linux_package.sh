#!/bin/sh

curdir=`pwd`
rm -rf buildtmp
mkdir buildtmp
~/meson/meson.py buildtmp --buildtype=release --prefix=/tmp/myapp --libdir=lib
ninja -C buildtmp install
rm -rf buildtmp
cd /tmp/
tar czf myapp.tar.gz myapp
mv myapp.tar.gz "$curdir"
rm -rf myapp
