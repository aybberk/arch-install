##### OHMYZSH ######
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

sudo pacman -S i3   --noconfirm
sudo pacman -S dmenu   --noconfirm
sudo pacman -S yay --noconfirm
sudo pacman -S gvim --noconfirm
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
sudo pacman -S unrar --noconfirm
sudo pacman -S p7zip --noconfirm
sudo pacman -S cgvfs-smb --noconfirm

#### Git config name mail ####
git config --global user.email "e187569@metu.edu.tr" 
git config --global user.name "Ayberk Aydin"         

#sudo pacman -S linux-'something'-nvidia-'something'xx bumblebee mesa xf86-video-intel --noconfirm



###################################
#### handle dotfiles ##############
###################################
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/aybberk/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
git clone --bare https://www.github.com/aybberk/dotfiles.git $HOME/.dotfiles.git 


###################################
#yay -S spotify --noconfirm
#yay -S dropbox --noconfirm
#yay -S simplenote --noconfirm


###############################
# > Session and Startup
# >>> Current Session
# >>>>> xfwm4 and xdesktop, xfce4-panel (Immediately > Never)
# >>>>> Save session
# >>> Application Autostart
# >>>>> Add
# >>>>>>> Name: i3, Command: i3
# >>>>>>> Make sure checked
# > Keyboard
# >>> Application Shortcuts
# >>> Remove all.
#
###############################
## KEYBOARD DELAY VS
## KEYBOARD LAYOUT EKLE
## NUMLOCK
## SUDOERS
## SCREENSAVER KAPA
## ALT SHIFT KEYBOARD LAYOUT
## CAPS ESC SWITCH
#This driver now uses DRI3 as the default Direct Rendering
#Infrastructure. You can try falling back to DRI2 if you run
#into trouble. To do so, save a file with the following 
#content as /etc/X11/xorg.conf.d/20-intel.conf :
#  Section "Device"
#    Identifier  "Intel Graphics"
#    Driver      "intel"
#    Option      "DRI" "2"             # DRI3 is now default 
#    #Option      "AccelMethod"  "sna" # default
#    #Option      "AccelMethod"  "uxa" # fallback
#  EndSection

