#!/bin/sh

# Download archive
rm -rf /tmp/linux-install
mkdir /tmp/linux-install
cd /tmp/linux-install
curl -fLo archive.zip https://github.com/lucalaissue/manjaro-install-script/archive/master.zip
unzip archive.zip
cd manjaro-install-script-master

# Install
cd manjaro
sudo sh manjaro.sh $USER
cd ../snap
sudo sh install-snaps.sh
cd ../vim
sh install-vim.sh
cd ..
sh gnome/gnome.sh

# Cleanup
cd ~
rm -r /tmp/linux-install
