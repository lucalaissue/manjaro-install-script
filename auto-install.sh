#!/bin/sh

rm -rf /tmp/linux-install
mkdir /tmp/linux-install
cd /tmp/linux-install
curl -L https://gitlab.com/lucalaissue/linux-config/-/archive/master/linux-config-master.tar.gz | tar -xz
cd linux-config-master
sh install.sh
cd ~
rm -r /tmp/linux-install

