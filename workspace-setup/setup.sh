# DEF
#This script installs some programs I like using.
apt-get update
apt-get install -y neovim exa
apt-get upgrade -y neovim

# Install plug.vim neovim/vim package manager.
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'                                           

# Replace ls with exa. 
echo 'alias ls="exa -T -a --level 1 --icons"' >> ~/.bashrc
mkdir -p ~/.config/nvim
ln -s ./init.vim ~/.config/nvim/init.vim
nvim +PlugInstall +qall


