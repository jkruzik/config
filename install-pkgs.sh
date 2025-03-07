#!/bin/bash
source ./install.sh

# sys
install linux-headers
install dkms

# graphics
install xorg-xbacklight
install xorg-xrandr
install xorg-xrdb
install xorg-xinit
install mesa-demos
# AMD
#install xf86-video-amdgpu mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon
# Intel
install xf86-video-modesetting
#install vulkan-intel lib32-vulkan-intel
# NVIDIA
install nvidia-dkms nvidia-settings lib32-nvidia-utils nvidia-utils lib32-nvidia-utils
# PRIME
install nvidia-prime
#
install vulkan-icd-loader lib32-vulkan-icd-loader vulkan-tools

# network
install openssh ksshaskpass kwallet-pam kwalletmanager
install network-manager-applet networkmanager networkmanager-dmenu-git networkmanager-openconnect
install openconnect
install rsync
install inetutils

# devel
install llvm clang
install cmake
install ccache
install gcc-fortran
install gdb
install git git-lfs
install blas-openblas
install octave
install openmp
install openmpi hdf5-openmpi python-h5py-openmpi
install python-pip
install python-scipy
install paraview
install strace
install heaptrack
install valgrind
install xterm

# usability
install bluez
install bluez-utils
install cups
install hdparm
install lsof
install ntfs-3g
install ntp
install psmisc
install pipewire pipewire-pulse
install zsh
install zsh-completions

# wm
install breeze breeze-gtk
install picom
install dmenu
install dunst
install feh
install i3-wm
install i3lock
install polybar-git
install python-dbus
install python-gobject
install plasma-desktop plasma5-integration
install redshift
install ttf-dejavu
install ttf-fira-code ttf-fira-mono ttf-fira-sans
install ttf-hack
install ttf-iosevka ttf-iosevka-term ttf-iosevka-nerd
install ttf-liberation
install qlipper-git

# tex
install biber
install gnuplot
install python-matplotlib
install texlive texlive-langenglish texlive-langczechslovak

# general apps
## archives
install ark unrar zip p7zip
## browsers
install chromium
install firefox
install google-chrome
install opera opera-ffmpeg-codecs-bin
## managers
install calibre
install dolphin
install dropbox
install filelight
install gwenview kimageformats5
install golden-cheetah-git
## others
install alacritty
install gimp
install gvim
install inkscape
install kate
install konsole
install ksysguard6-git
install ktorrent
install libreoffice-fresh
install smplayer mplayer mpv
install okular
install pavucontrol
install spectacle
install thunderbird
install tigervnc
install xournalpp
install yt-dlp

# games
install wine-staging wine-mono wine_gecko
install steam
install lutris
install supertuxkart
install lib32-pipewire lib32-libpulse lib32-gnutls lib32-sdl2 lib32-gst-plugins-base  lib32-gst-libav libva lib32-libva
install openal lib32-openal
install mpg123 lib32-mpg123 v4l-utils lib32-v4l-utils
install giflib lib32-giflib libpng lib32-libpng libjpeg-turbo lib32-libjpeg-turbo
install sqlite lib32-sqlite
install libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama
isntall gnutls lib32-gnutls lib32-libgcrypt libgcrypt
install libxslt lib32-libxslt
install ocl-icd lib32-ocl-icd

# other
#install ncurses5-compat-libs #matlab

