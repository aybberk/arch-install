sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

sudo pacman -Rdd caja --noconfirm

sudo pacman -S i3   --noconfirm
sudo pacman -S dmenu   --noconfirm
sudo pacman -S yay --noconfirm
sudo pacman -S vim --noconfirm
sudo pacman -S base base-devel --noconfirm
sudo pacman -S chromium --noconfirm
sudo pacman -S termite --noconfirm
sudo pacman -S py3status --noconfirm
sudo pacman -S ttf-font-awesome noto-fonts-emoji --noconfirm
sudo pacman -S nitrogen --noconfirm
sudo pacman -S redshift  --noconfirm
sudo pacman -S light  --noconfirm
sudo pacman -S flameshot --noconfirm
sudo pacman -S pcmanfm --noconfirm
sudo pacman -S compton --noconfirm
sudo pacman -S python-pip --noconfirm
sudo pacman -S vim --noconfirm
sudo pacman -S kolourpaint  --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S cmatrix --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S htop --noconfirm



###################################
gsettings set org.mate.session.required-components filemanager ''
gsettings set org.mate.session.required-components windowmanager 'i3'
gsettings set org.mate.session.required-components panel ''


###################################
yay -S spotify --noconfirm
yay -S dropbox --noconfirm
yay -S simplenote --noconfirm


#### Git config name mail ####
git config --global user.email "e187569@metu.edu.tr" 
git config --global user.name "Ayberk Aydin"         

##### OHMYZSH ######
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

###################################
#### handle dotfiles ##############
###################################
#git clone --separate-git-dir=$HOME/.dotfiles https://github.com/aybberk/dotfiles.git tmpdotfiles
#rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
#rm -r tmpdotfiles
#git clone --bare https://www.github.com/aybberk/dotfiles.git $HOME/.dotfiles.git 


## KEYBOARD DELAY VS
## KEYBOARD SHORTCUTS
## SCREENSAVER KAPA
