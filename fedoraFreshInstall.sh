#!/bin/bash

sudo dnf makecache
sudo dnf -y update
sudo dnf -y upgrade
sudo dnf -y install wget vim terminator curl sudo dnf-plugin-system-upgrade gpg keepass
cp .bash_aliases ~/.bash_aliases
cp .bashrc ~/.bashrc
source ~/.bash_aliases ~/etc/.bashrc
mkdir -vp /home/dl/installers
cd /home/dl/installers
wget -vdc https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf -y install ./google-chrome-stable_current_x86_64.rpm
rm -rvi /home/dl
