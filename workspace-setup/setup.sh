# This script installs some programs that I like using.

apt-get update
apt-get install -y neovim exa
apt-get upgrade neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.c    om/junegunn/vim-plug/master/plug.vim'                                           
echo 'alias ls=exa -T -a --level 2 --icons' >> ~/.shrc
