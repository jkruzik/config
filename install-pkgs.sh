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
install nvidia-dkms nvidia-settings nvidia-utils lib32-nvidia-utils
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
install wget

# devel
install llvm clang clang-format-static-bin
install cmake
install cython
install gcc-fortran
install gdb
install git git-lfs
install python-pip
install strace
install heaptrack
install valgrind
install xterm

# devel extra
install bear
install boost
install blas-openblas
install ccache
install cloc sloccount
isntall docker apptainer
install gmsh-bin
install mercurial subversion
install octave
install openmp
install openmpi hdf5-openmpi python-h5py-openmpi
install python-scipy python-scikit-learn
install python-mpmath
install paraview

# usability
install bluez
install bluez-utils
install cpupower
install cups
install dmidecode
isntall exfatprogs
install hdparm
install lsof
install man-pages man-db tldr
install ntfs-3g
install ntp
install psmisc
install pipewire pipewire-pulse
install playerctl
install ripgrep ripgrep-all
install zsh zsh-completions zsh-syntax-highlighting zsh-vi-mode

# wm
install breeze breeze-gtk
install picom
install dmenu
install dunst
install feh
install i3-wm python-i3ipc
install i3lock
install polybar
install python-dbus
install python-gobject
install plasma-desktop plasma5-integration
install redshift
install ttf-dejavu
install ttf-fira-code ttf-fira-mono ttf-fira-sans
install ttf-hack
install ttf-iosevka ttf-iosevka-term ttf-iosevka-nerd
install ttf-liberation
#install ttf-ms-win11-auto
install qlipper-git
install qt5ct-kde qt6ct-kde

# tex
install biber
install gnuplot
install python-matplotlib
install pdf2svg
install texlive texlive-langenglish texlive-langczechslovak
install bibtex2html-git

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
install inkscape pstoedit
install kate
install konsole
install btop ksysguard6-git
install ktorrent
install libreoffice-fresh hunspell-cs hunspell-en_us hyphen-cs hyphen-en
install smplayer mplayer mpv
install okular
install pavucontrol
install spectacle
install spotify-launcher
install thunderbird
install tigervnc
install xournalpp wacomtablet
install yt-dlp
install zathura zathura-djvu zathura-pdf-mupdf zathura-pdf-poppler zathura-ps

# games
install wine-staging wine-mono wine_gecko winetricks
install dxvk-bin vkd3d-proton-bin
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
#install ckb-next #work kb
