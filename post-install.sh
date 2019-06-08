###################################
#### Make directories to home #####
###################################
mkdir $HOME/Downloads
mkdir $HOME/Pictures
mkdir $HOME/Desktop
sudo mkdir /media/myusb /media/myhdd /media/mysd -p

###################################
##### Setup yay ###################
###################################

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
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

sudo pacman -S pacman-contrib      --noconfirm
sudo pacman -S acpi                --noconfirm
sudo pacman -S rsync               --noconfirm
sudo pacman -S mlocate             --noconfirm
sudo pacman -S openssh             --noconfirm
sudo pacman -S arandr              --noconfirm
sudo pacman -S zip                 --noconfirm
sudo pacman -S transmission-qt     --noconfirm
sudo pacman -S easytag             --noconfirm
sudo pacman -S eog                 --noconfirm
sudo pacman -S audacity            --noconfirm
sudo pacman -S neofetch            --noconfirm
sudo pacman -S deadbeef            --noconfirm
sudo pacman -S vlc                 --noconfirm
sudo pacman -S mpg123              --noconfirm
sudo pacman -S libmad              --noconfirm
sudo pacman -S unzip               --noconfirm
sudo pacman -S chromium            --noconfirm
sudo pacman -S i3                  --noconfirm
sudo pacman -S dmenu               --noconfirm
sudo pacman -S xautolock           --noconfirm
sudo pacman -S flameshot           --noconfirm
sudo pacman -S gvim                --noconfirm
sudo pacman -S xclip               --noconfirm
sudo pacman -S xsel                --noconfirm
sudo pacman -S code                --noconfirm
sudo pacman -S sddm                --noconfirm
sudo pacman -S lolcat              --noconfirm
sudo pacman -S cmatrix             --noconfirm
sudo pacman -S termite             --noconfirm
sudo pacman -S ranger              --noconfirm
sudo pacman -S pcmanfm             --noconfirm
sudo pacman -S tldr                --noconfirm
sudo pacman -S htop                --noconfirm
sudo pacman -S nmap                --noconfirm
sudo pacman -S wget                --noconfirm
sudo pacman -S python-pip          --noconfirm
sudo pacman -S evince              --noconfirm
sudo pacman -S nitrogen            --noconfirm
sudo pacman -S compton             --noconfirm
sudo pacman -S tcpdump             --noconfirm
sudo pacman -S bind-tools          --noconfirm
sudo pacman -S wireshark-qt        --noconfirm
sudo pacman -S dosfstools          --noconfirm
sudo pacman -S zip                 --noconfirm
sudo pacman -S unzip               --noconfirm
sudo pacman -S unrar               --noconfirm
sudo pacman -S file-roller         --noconfirm
sudo pacman -S libreoffice-still   --noconfirm
sudo pacman -S fbreader            --noconfirm
sudo pacman -S dunst               --noconfirm
sudo pacman -S netcat              --noconfirm
sudo pacman -S py3status           --noconfirm
sudo pacman -S lxappearance        --noconfirm
sudo pacman -S arc-gtk-theme       --noconfirm
sudo pacman -S arc-icon-theme      --noconfirm
sudo pacman -S breeze-gtk          --noconfirm
sudo pacman -S breeze-icons        --noconfirm
sudo pacman -S xcursor-comix       --noconfirm
sudo pacman -S xcursor-flatbed     --noconfirm
sudo pacman -S redshift            --noconfirm
sudo pacman -S light               --noconfirm



###################################
### Install fonts     #############
###################################

sudo pacman -S $(pacman -Ssq "^noto-|^ttf-|^otf-") awesome-terminal-fonts --noconfirm


################################################################################
###### Install aur things ######################################################
################################################################################

#Bu key dropbox icin
gpg --recv-key FC918B335044912E

yay -S spotify               --noconfirm
yay -S dropbox               --noconfirm
yay -S simplenote            --noconfirm
yay -S pamac-aur             --noconfirm


## SDDM themes
yay -S sddm-breath-theme     --noconfirm
yay -S chili-sddm-theme      --noconfirm

echo "[Theme]
Current=chili" | sudo tee /etc/sddm.conf



#####################################################################
### Install pytorch and other scientific computing libs  ############
#####################################################################

sudo pacman -S python-pytorch-cuda --noconfirm
sudo pip3 install numpy scipy matplotlib ipython jupyter pandas sympy nose



### Enable daemons  ###
sudo systemctl enable sddm.service
#sudo systemctl enable sshd.service


#### Sound ####

sudo pacman -S alsa-utils --noconfirm
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

### git config ###
git config --global user.email "e187569@metu.edu.tr"
git config --global user.name "Ayberk Aydin"        


#### handle dotfilesi #####
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/aybberk/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
git clone --bare https://www.github.com/aybberk/dotfiles.git $HOME/.dotfiles.git 
dotfiles config --local status.showUntrackedFiles no

##### OHMYZSH ######
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k


echo '
#####SYSTEM THINGS############################
## enable net services
## change sddm config to set theme
## run lxappereance to set themes
## $dotfiles checkout
## nitrogen set bg first time ($ nitrogen /path/to/wallpapers/directory/  [!not the bg itself])

##################################################
'
