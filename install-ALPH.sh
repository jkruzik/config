#!/bin/bash
source ./install.sh

install alhp-keyring alhp-mirrorlist

sudo ln -sf $(pwd)/pacman.conf /etc/

sudo pacman -Syu

