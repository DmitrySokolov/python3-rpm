#!/bin/sh

#  Updated and install required packages before
#
#sudo yum update -y
#sudo reboot
#sudo yum install yum-utils rpmdevtools rpmlint -y
#sudo yum-builddep python3 -y


curl -o ssl.tgz https://www.openssl.org/source/openssl-1.1.1p.tar.gz
tar xzf ssl.tgz
cd openssl-1.1.1p
./config no-shared zlib-dynamic
make
make install
cd ..

curl -o py3.tgz https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz
tar xzf py3.tgz
cd Python-3.10.5
patch -p1 <../python3-link.patch
./configure --prefix=/opt/python
make
make test
make altinstall
cd ..

#rm -rf ./py3
