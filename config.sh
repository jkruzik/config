#!/bin/bash
# services
services=(
  bluetooth.service
  NetworkManager.service
  org.cups.cupsd.socket
)

uservices=(
  bedtime.timer
)

for s in "${services[@]}"; do
  sudo systemctl enable $s
  sudo systemctl start $s
done

# configs
sudo mkdir -p /etc/NetworkManager/system-connections/
sudo cp $(pwd)/nm/eduroam.nmconnection /etc/NetworkManager/system-connections/
echo "Fill in /etc/NetworkManager/system-connections/eduroam.nmconnection and restart NetworkManager.service"

mkdir -p $HOME/.config/i3
ln -sf $(pwd)/i3/* $HOME/.config/i3/

mkdir -p $HOME/.config/dunst
ln -sf $(pwd)/dunst/dunstrc $HOME/.config/dunst

ln -sf $(pwd)/alacritty $HOME/.config/

ln -sf $(pwd)/konsole/konsolerc $HOME/.config/
mkdir -p $HOME/.local/share/konsole/
ln -sf $(pwd)/konsole/profile.profile $HOME/.local/share/konsole/

mkdir -p $HOME/.config/latexmk
ln -sf $(pwd)/latexmk/latexmkrc $HOME/.config/latexmk/

ln -sf $(pwd)/okular/okularrc $HOME/.config/

ln -sf $(pwd)/qt/kdeglobals $HOME/.config/kdeglobals

ln -sf $(pwd)/vim $HOME/.vim

ln -sf $(pwd)/gtk-3.0 $HOME/.config/

ln -sf $(pwd)/mimeapps.list $HOME/.config/

ln -sf $(pwd)/octave $HOME/.config/

ln -sf $(pwd)/picom $HOME/.config/

ln -sf $(pwd)/pikaur/pikaur.conf $HOME/.config/

ln -sf $(pwd)/polybar $HOME/.config/

mkdir -p $HOME/.config/systemd/user
ln -sf $(pwd)/systemd/mpris-proxy.service $HOME/.config/systemd/user/
ln -sf $(pwd)/systemd/bedtime.timer $HOME/.config/systemd/user/
ln -sf $(pwd)/systemd/bedtime.service $HOME/.config/systemd/user/

ln -sf $(pwd)/xorg/xinitrc $HOME/.xinitrc
ln -sf $(pwd)/xorg/xprofile $HOME/.xprofile
ln -sf $(pwd)/xorg/Xresources $HOME/.Xresources

machineresources=$(pwd)/xorg/Xresources-$(hostname)
if [ -f "$machineresources" ]; then
  ln -sf $machineresources $HOME/.config/Xresources-$(hostname)
fi

ln -sf $(pwd)/zsh/zshrc $HOME/.zshrc
ln -sf $(pwd)/zsh/zprofile $HOME/.zprofile

mkdir -p $HOME/devel/scripts
for f in $(pwd)/scripts/*; do
  ln -sf $f $HOME/devel/scripts/
done

chsh -s /bin/zsh

for s in "${uservices[@]}"; do
  sudo systemctl --user enable $s
  sudo systemctl --user start $s
done

#vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

