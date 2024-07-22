# Arch install


## Get install medium
[Download image](https://www.archlinux.org/download/)

Put img on a drive
```
dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress oflag=sync
```


## Network
```
wifi-menu
timedatectl set-ntp true
```


## HDD
[wiki](https://wiki.archlinux.org/index.php/Dm-crypt/Encrypting_an_entire_system#LUKS_on_a_partition)

### Wipe
[wiki](https://wiki.archlinux.org/index.php/Dm-crypt/Drive_preparation)
```
cryptsetup open --type plain -d /dev/urandom /dev/<block-device> wipe
dd if=/dev/zero of=/dev/mapper/wipe status=progress
cryptsetup close wipe
```
### Partition
```
sdXY := nvme0nXpY
sdX := nvme0nX
```
```
fdisk /dev/sdx
mkswap /dev/sdx2
swapon /dev/sdx2
mkfs.fat -F32 /dev/sdx1
```

### Encrypt
```
cryptsetup -y -v luksFormat -s 512 --type luks2 /dev/sdx3
cryptsetup open /dev/sdx3 cryptroot
mkfs.ext4 -m 0.5 /dev/mapper/cryptroot
```

### Mount
```
mount /dev/mapper/cryptroot /mnt
mkdir /mnt/boot
mount /dev/sdx1 /mnt/boot
```


## Pacman
```
vim /etc/pacman.d/mirrorlist
```

## Base install
```
pacstrap /mnt base base-devel vim
```

## Configure
```
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
```

### Clock
```
ln -sf /usr/share/zoneinfo/Europe/Prague /etc/localtime
hwclock --systohc
```

### Locale
```
vim /etc/locale.gen
vim /etc/locale.conf
i LANG=en_US.UTF-8
locale-gen
```

### Hostname
```
vim /etc/hostname
vim /etc/hosts
```

### Init ramdisk
```
vim /etc/mkinicpio.conf
mkinicpio -p linux
```

### Bootloader
```
CPU=amd OR intel
UUID=$(blkid /dev/sdXY -o value -s UUID)
pacman -S efibootmgr $CPU-ucode
efibootmgr --disk /dev/sdX --part Y --create --label "Arch Linux" --loader /vmlinuz-linux --unicode "cryptdevice=UUID=${UUID}:cryptroot root=/dev/mapper/cryptroot
 rw initrd=\${CPU}-ucode.img initrd=\initramfs-linux.img" --verbose
```

### Set password
```
passwd
```

### Create user
```
useradd -m jakub
passwd jakub
visudo
```

### Install AUR helper
```
pacman -S git
su jakub
cd /dev/shm
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
```

### Install pkgs
```
cd ~
git clone https://github.com/jkruzik/config.git
cd config
git config --local core.hooksPath .githooks/
./install-ALPH.sh
./install-pkgs.sh
./config.sh
```


## Reboot
```
umount -R /mnt
reboot
```

