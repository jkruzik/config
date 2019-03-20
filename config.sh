# services
services=(
  bluetooth.service
  NetworkManager.service
  org.cups.cupsd.socket
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
ln -s ${pwd}/i3/* $HOME/.config/i3/

ln -s ${pwd}/kosonle/konsolerc $HOME/.config/
mkdir -p $HOME/.local/share/konsole/
ln -s ${pwd}/konsole/profile.profile $HOME/.local/share/konsole/

ln -s ${pwd}/okular/okularrc $HOME/.config/

mkdir -p $HOME/.config/qt5ct
ln -s ${pwd}/qt5ct/qt5ct.conf $HOME/.config/qt5ct/

ln -s ${pwd}/vim/vimrc $HOME/.vimrc

ln -s ${pwd}/gtk-3.0 $HOME/.config/

ln -s ${pwd}/mimeapps.list $HOME/.config/

ln -s ${pwd}/octave $HOME/.config/

ln -s ${pwd}/polybar $HOME/.config/

ln -s ${pwd}/xorg/xinitrc $HOME/.xinitrc
ln -s ${pwd}/xorg/xprofile $HOME/.xprofile
ln -s ${pwd}/xorg/Xresources $HOME/.Xresources

ln -s ${pwd}/zsh/zshrc $HOME/.zshrc
ln -s ${pwd}/zsh/profile $HOME/.zprofile

