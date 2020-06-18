# services
services=(
  bluetooth.service
  NetworkManager.service
  org.cups.cupsd.socket
)

uservices=(
  mpris-proxy.service
)

for s in "${services[@]}"; do
  sudo systemctl enable $s
  sudo systemctl start $s
done

# configs
sudo mkdir -p /etc/NetworkManager/system-connections/
sudo cp ${pwd}/nm/eduroam.nmconnection /etc/NetworkManager/system-connections/
echo "Fill in /etc/NetworkManager/system-connections/eduroam.nmconnection and restart NetworkManager.service"

mkdir -p $HOME/.config/i3
ln -sf $(pwd)/i3/* $HOME/.config/i3/

mkdir -p $HOME/.config/dunst
ln -sf $(pwd)/dunst/dunstrc $HOME/.config/dunst

ln -sf $(pwd)/konsole/konsolerc $HOME/.config/
mkdir -p $HOME/.local/share/konsole/
ln -sf $(pwd)/konsole/profile.profile $HOME/.local/share/konsole/

ln -sf $(pwd)/okular/okularrc $HOME/.config/

mkdir -p $HOME/.config/qt5ct
ln -sf $(pwd)/qt5ct/qt5ct.conf $HOME/.config/qt5ct/
cp /usr/share/color-schemes/BreezeDark.colors $HOME/.config/kdeglobals

ln -sf $(pwd)/vim/vimrc $HOME/.vimrc

ln -sf $(pwd)/gtk-3.0 $HOME/.config/

ln -sf $(pwd)/mimeapps.list $HOME/.config/

ln -sf $(pwd)/octave $HOME/.config/

ln -sf $(pwd)/polybar $HOME/.config/

mkdir -p $HOME/.config/systemd/user
ln -sf $(pwd)/systemd/mpris-proxy.service $HOME/.config/systemd/user/

ln -sf $(pwd)/xorg/xinitrc $HOME/.xinitrc
ln -sf $(pwd)/xorg/xprofile $HOME/.xprofile
ln -sf $(pwd)/xorg/Xresources $HOME/.Xresources

ln -sf $(pwd)/zsh/zshrc $HOME/.zshrc
ln -sf $(pwd)/zsh/zprofile $HOME/.zprofile

chsh -s /bin/zsh

for s in "${uservices[@]}"; do
  sudo systemctl --user enable $s
  sudo systemctl --user start $s
done
