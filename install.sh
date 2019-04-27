read -p "
################################################################################
# This script is intended to run after arch-chroot. Press any key to continue ##
################################################################################
"

##################
#  Set time zone #
##################

ln -sf /usr/share/zoneinfo/Europe/Istanbul /etc/localtime
hwclock --systohc

##################
#  Localization  #
##################

rm /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" > /etc/locale.conf

##################
# Network config #
##################

echo "ayb-pc" > /etc/hostname

echo "127.0.0.1 	localhost" >> /etc/hosts
echo "::1       	localhost" >> /etc/hosts
echo "127.0.1.1 	ayb-pc.localdomain	ayb-pc" >> /etc/hosts

#####################
## Set root passwd  #
#####################

passwd


#####################
### Install GRUB ####
#####################
pacman -S grub efibootmgr os-prober ntfs-3g --noconfirm


##DEVICE NAME IF BIOS, MOUNT POINT (/boot) IF UEFI
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg


#####################
#### Install the things that will be
#### necessary for internet connection 
#### after reboot
#####################

pacman -S reflector --noconfirm
reflector -l 200 --sort rate --save /etc/pacman.d/mirrorlist 
pacman -S wpa_supplicant dialog wireless_tools git zsh broadcom-wl zsh networkmanager nm-connection-editor network-manager-applet --noconfirm

#########

systemctl enable NetworkManager.service

####################################
####### Add User ###################
####################################

useradd -m -G wheel -s /bin/zsh ayb
passwd ayb

read -p "uncomment the wheels thing.(with passwd or nopasswd). Press enter to continue"
visudo 



echo "########################################################"
echo "Now exit from chroot and unmount partitions, then reboot"
echo "########################################################"


#####
