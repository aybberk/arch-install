
###################################
#### handle dotfiles ##############
###################################
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/aybberk/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
git clone --bare https://www.github.com/aybberk/dotfiles.git $HOME/.dotfiles.git 

