apt update
apt install curl wget -y
sudo apt-get install zsh
echo " you should press control_d once you get into the ohmyzsh prompt to continue the setup of this cool and magical script"
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
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda3/miniconda.sh
bash $HOME/miniconda3/miniconda.sh -b -u -p $HOME/miniconda3
source $HOME/miniconda3/bin/activate
conda init 
conda init zsh
echo "zsh" >> ~/.bashrc
conda update -n base conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba


