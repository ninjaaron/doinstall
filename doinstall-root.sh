#!/bin/sh
user="$1"
useradd -ms /usr/bin/zsh -G sudo "$user" &&
mv .ssh/ "/home/$user/.ssh" &&
chown  "$user" "/home/$user/.ssh/" -R &&
passwd "$user" &&
apt-get update &&
apt-get install -y zsh git tmux vim python3-pip python3-lxml &&
rm ~/doinstall-root.sh
