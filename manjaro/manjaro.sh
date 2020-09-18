#!/bin/sh

if [ $# != 1 ]
then
    echo "Invalid arguments" && exit 1
fi

# Pacman
if [ "$(grep AUTO-SCRIPT /etc/pacman.conf)" == "" ]
then
    cat pacmanrepos >> /etc/pacman.conf
fi
pacman -Syyu --noconfirm
pacman -S $(<pacmansofts) --noconfirm

# Vivaldi
sudo /opt/vivaldi/update-ffmpeg # FFMPEG

# Docker
systemctl enable docker
usermod -aG docker $1

