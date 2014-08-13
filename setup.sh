ln -sf `pwd`/bashrc ~/.bashrc
ln -sf `pwd`/gitignore ~/.gitignore
ln -sf `pwd`/git-prompt.sh ~/.git-prompt.sh
ln -sf `pwd`/bash-prompt.sh ~/.bash-prompt.sh
ln -sf `pwd`/git-completion.bash ~/.git-completion.bash
ln -sf `pwd`/gvimrc ~/.gvimrc
ln -sf `pwd`/screenrc ~/.screenrc
ln -sf `pwd`/vim ~/.vim
ln -sf `pwd`/vimrc ~/.vimrc
ln -sf `pwd`/gitconfig ~/.gitconfig
ln -sf `pwd`/tmux.conf ~/.tmux.conf
sudo rm /etc/ssh_config && sudo ln -sf `pwd`/ssh_config /etc/ssh_config
