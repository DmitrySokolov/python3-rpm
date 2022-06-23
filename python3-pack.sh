#!/bin/sh

rpmdev-setuptree

pushd ~
cp -R /opt/python ./python-3.10.5
tar --create --file python-3.10.5.tgz ./python-3.10.5
mv ./python-3.10.5.tgz ./rpmbuild/SOURCES/
rm -rf ./python-3.10.5
popd

cp ./python3.spec ~/rpmbuild/SPECS/

rpmlint ~/rpmbuild/SPECS/python3.spec && rpmbuild -bb ~/rpmbuild/SPECS/python3.spec
