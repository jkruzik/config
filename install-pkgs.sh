INSTALL_CMD='pikaur -S --noconfirm --needed'

# graphics
$INSTALL_CMD xorg-xbacklight 
$INSTALL_CMD xorg-xrandr 
$INSTALL_CMD xorg-xrdb
$INSTALL_CMD xorg-xinit
$INSTALL_CMD mesa-demos
$INSTALL_CMD nvidia nvidia-settings lib32-nvidia-utils nvidia-prime
$INSTALL_CMD xf86-video-modesetting
#$INSTALL_CMD xf86-video-amdgpu mesa lib32-mesa

# general apps
## archives
$INSTALL_CMD ark unrar 
## browsers
$INSTALL_CMD chromium 
$INSTALL_CMD firefox 
$INSTALL_CMD google-chrome 
$INSTALL_CMD opera opera-ffmpeg-codecs 
## managers
$INSTALL_CMD calibre 
$INSTALL_CMD dolphin 
$INSTALL_CMD dropbox 
$INSTALL_CMD filelight 
$INSTALL_CMD gwenview 
$INSTALL_CMD golden-cheetah-git
## others
$INSTALL_CMD gimp
$INSTALL_CMD gvim 
$INSTALL_CMD inkscape 
$INSTALL_CMD kate 
$INSTALL_CMD konsole 
$INSTALL_CMD ksysguard 
$INSTALL_CMD ktorrent 
$INSTALL_CMD libreoffice-fresh 
$INSTALL_CMD smplayer mplayer mpv 
$INSTALL_CMD okular 
$INSTALL_CMD pavucontrol 
$INSTALL_CMD spectacle 
$INSTALL_CMD thunderbird 
$INSTALL_CMD tigervnc 
$INSTALL_CMD xournalpp 

#network
$INSTALL_CMD openssh ksshaskpass kwallet-pam kwalletmanager 
$INSTALL_CMD network-manager-applet networkmanager networkmanager-dmenu-git networkmanager-openconnect 
$INSTALL_CMD openconnect 
$INSTALL_CMD rsync 

# tex
$INSTALL_CMD biber 
$INSTALL_CMD gnuplot 
$INSTALL_CMD texlive-most 
$INSTALL_CMD texstudio 

# devel
$INSTALL_CMD llvm clang 
$INSTALL_CMD cmake
$INSTALL_CMD gcc-fortran 
$INSTALL_CMD gdb 
$INSTALL_CMD git 
$INSTALL_CMD gitkraken 
$INSTALL_CMD mercurial 
$INSTALL_CMD octave
$INSTALL_CMD openmp 
$INSTALL_CMD python-pip 
$INSTALL_CMD valgrind 
$INSTALL_CMD xterm 

# games
$INSTALL_CMD wine-staging wine-mono wine_gecko 
$INSTALL_CMD steam 
$INSTALL_CMD supertuxkart 

# wm
$INSTALL_CMD breeze breeze-gtk 
$INSTALL_CMD compton 
$INSTALL_CMD dmenu 
$INSTALL_CMD dunst
$INSTALL_CMD feh
$INSTALL_CMD i3-gaps 
$INSTALL_CMD i3blocks 
$INSTALL_CMD i3lock 
$INSTALL_CMD i3status 
$INSTALL_CMD polybar-git 
$INSTALL_CMD python-dbus
$INSTALL_CMD python-gobject
$INSTALL_CMD qt5ct 
$INSTALL_CMD redshift 
$INSTALL_CMD sddm 
$INSTALL_CMD ttf-dejavu 
$INSTALL_CMD ttf-fira-code 
$INSTALL_CMD ttf-fira-mono 
$INSTALL_CMD ttf-fira-sans 
$INSTALL_CMD ttf-font-awesome 
$INSTALL_CMD ttf-hack 
$INSTALL_CMD ttf-iosevka 
$INSTALL_CMD ttf-iosevka-term 
$INSTALL_CMD ttf-liberation 
$INSTALL_CMD ttf-material-design-icons 
$INSTALL_CMD qlipper-git 

# usability
$INSTALL_CMD bluez 
$INSTALL_CMD bluez-utils 
$INSTALL_CMD cups
$INSTALL_CMD hdparm 
$INSTALL_CMD lsof 
$INSTALL_CMD ntfs-3g 
$INSTALL_CMD ntp 
$INSTALL_CMD poppler-glib 
$INSTALL_CMD psmisc 
$INSTALL_CMD pipewire pipewire-pulse 
$INSTALL_CMD youtube-dl 
$INSTALL_CMD zsh 
$INSTALL_CMD zsh-completions 


# other
#$INSTALL_CMD ncurses5-compat-libs #matlab

