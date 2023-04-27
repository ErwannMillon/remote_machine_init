apt update
apt install curl wget
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo 'alias python=python3'>> ~/.zshrc
echo 'alias pip=pip3'>> ~/.zshrc
source ~/.vimrc
source ~/.zshrc
git clone https://github.com/ErwannMillon/dotfiles.git
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | sudo bash
sudo apt-get install git-lfs
cat dotfiles/vimrc >> ~/.vimrc
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

