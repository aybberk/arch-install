##### OHMYZSH ######
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

sudo pacman -S i3   --noconfirm
sudo pacman -S dmenu   --noconfirm
sudo pacman -Rc xfdesktop --noconfirm
sudo pacman -R xfwm4 --noconfirm


xfconf-query -c xfce4-session -p /sessions/Failsafe/Client0_Command -t string -sa xfsettingsd
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client1_Command -t string -s 'xfce4-panel' -t string -s '--disable-wm-check'
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client2_Command -t string -sa i3 --create
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client3_Command -t string -s 'Thunar' -t string -s '--daemon'
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client4_Command -t string -sa ''

xfconf-query -c xfce4-session -p /compat/LaunchGNOME -t bool -s true --create
xfconf-query -c xfce4-session -p /general/LockCommand -t string  -s 'i3lock -c 330000' --create

xfconf-query -c keyboard-layout -p /Default/XkbLayout -t string -s 'us,tr' --create
xfconf-query -c keyboard-layout -p /Default/XkbOptions/Compose -t string -s 'compose:ralt' --create
xfconf-query -c keyboard-layout -p /Default/XkbOptions/Group -t string -s 'grp:alt_shift_toggle' --create
xfconf-query -c keyboard-layout -p /Default/XkbVariant -t string -s ',' --create

xfconf-query -c keyboards -p /Default/KeyRepeat/Delay -t int -s 250 --create
xfconf-query -c keyboards -p /Default/KeyRepeat/Rate -t int -s 50 --create
xfconf-query -c keyboards -p /Default/Numlock -t bool -s true --create 

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
sudo pacman -S cmake --noconfirm
sudo pacman -S compton --noconfirm
sudo pacman -S python-pip --noconfirm
sudo pacman -S kolourpaint  --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S cmatrix --noconfirm
sudo pacman -S unrar --noconfirm
sudo pacman -S p7zip --noconfirm
sudo pacman -S cgvfs-smb --noconfirm
sudo pacman -S nmap  --noconfirm
sudo pacman -S rofi  --noconfirm
sudo pacman -S neovim  --noconfirm

#### Git config name mail ####
git config --global user.email "e187569@metu.edu.tr" 
git config --global user.name "Ayberk Aydin"         

#sudo pacman -S linux-latest-nvidia-'something'xx bumblebee mesa xf86-video-intel --noconfirm

###################################
#### handle dotfiles ##############
###################################
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/aybberk/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
git clone --bare https://www.github.com/aybberk/dotfiles.git $HOME/.dotfiles.git 


###################################
##### Yay Installs ################
###################################
#yay -S spotify --noconfirm
#yay -S dropbox --noconfirm
#yay -S cpupower-gui  --noconfirm

###################################
####### Pip Installs ##############
###################################
#pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

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
## SCREENSAVER KAPA
## CAPS ESC YER DEGIS /etc/X11/xorg.conf.d/00-keyboard.conf
##
## SUDOERS
#
## VARSA HDD MOUNT
#
## THEME CHANGE
