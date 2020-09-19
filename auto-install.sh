#!/bin/sh

# Download archive
rm -rf /tmp/linux-install
mkdir /tmp/linux-install
cd /tmp/linux-install
curl -L https://github.com/lucalaissue/manjaro-install-script/archive/master.tar.gz | tar -xz
cd manjaro-install-script-master

# Install
cd manjaro
sudo sh manjaro.sh $USER
cd ../snap
sudo sh install-snaps.sh
cd ../vim
sh install-vim.sh
cd ../gnome
bash gnome.sh
