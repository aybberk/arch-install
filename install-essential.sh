

sudo pacman -S zsh --noconfirm

##### OHMYZSH ######
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

sudo pacman -S i3 rofi zsh yay gvim py3status nitrogen base base-devel termite compton flameshot ttf-font-awesome --noconfirm
