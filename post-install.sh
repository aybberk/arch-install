
###################################
##### Setup yay ###################
###################################

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
rm yay -rf

###################################
###### Display drivers and server # 
###################################

sudo pacman -S xf86-video-nouveau --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S bumblebee mesa nvidia xf86-video-intel --noconfirm

###################################
### Install apps      #############
###################################

sudo pacman -S acpi --noconfirm
sudo pacman -S rsync --noconfirm
sudo pacman -S mlocate --noconfirm
sudo pacman -S openssh --noconfirm
sudo pacman -S zip --noconfirm
sudo pacman -S transmission-qt --noconfirm
sudo pacman -S ristretto --noconfirm
sudo pacman -S easytag --noconfirm
sudo pacman -S mtpainti --noconfirm
sudo pacman -S audacity --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S deadbeef --noconfirm
sudo pacman -S mpg123 --noconfirm
sudo pacman -S libmad --noconfirm
sudo pacman -S unzip --noconfirm
sudo pacman -S chromium --noconfirm
sudo pacman -S i3 --noconfirm
sudo pacman -S flameshot --noconfirm
sudo pacman -S vim --noconfirm
sudo pacman -S code --noconfirm
sudo pacman -S sddm --noconfirm
sudo pacman -S lolcat --noconfirm
sudo pacman -S cmatrix --noconfirm
sudo pacman -S termite  --noconfirm
sudo pacman -S ranger --noconfirm
sudo pacman -S tldr --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S nmap --noconfirm
sudo pacman -S wget --noconfirm
sudo pacman -S python-pip --noconfirm
sudo pacman -S evince --noconfirm
sudo pacman -S nitrogen --noconfirm
sudo pacman -S compton --noconfirm
sudo pacman -S tcpdump --noconfirm
sudo pacman -S wireshark-qt --noconfirm
sudo pacman -S dosfstools --noconfirm
sudo pacman -S zip --noconfirm
sudo pacman -S unzip --noconfirm
sudo pacman -S unrar --noconfirm
sudo pacman -S xarchiver --noconfirm
sudo pacman -S libreoffice-still --noconfirm
sudo pacman -S fbreader --noconfirm
sudo pacman -S dunst --noconfirm



###################################
### Install fonts     #############
###################################

sudo pacman -S $(pacman -Ssq "^noto-|^ttf-|^otf-") awesome-terminal-fonts --noconfirm


###################################
### Install pytorch   #############
###################################

sudo pacman -S python-pytorch-cuda --noconfirm



################################################################################
###### Install aur things ######################################################
################################################################################

#Bu key dropbox icin
gpg --recv-key FC918B335044912ED      

yay -S spotify --noconfirm
yay -S dropbox --noconfirm
yay -S polybar --noconfirm
yay -S simplenote --noconfirm



### Enable daemons  ###
sudo systemctl enable sddm.service
sudo systemctl enable sshd.service
#TODO sddm temasi yukle

##### OHMYZSH ######
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh.custom/themes/powerlevel10k


#### Sound ####

sudo pacman -S alsa-utils --noconfirm
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

### git config ###
git config --global user.email "e187569@metu.edu.tr"
git config --global user.name "Ayberk Aydin"        


# handle dotfiles
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/aybberk/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

echo '
#####SYSTEM THINGS############################
## enable net services
## xbacklight may not be working, fix this by adding config file. see wiki
## change sddm config to set theme
##################################################
'
