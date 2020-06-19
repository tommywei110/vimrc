# vimrc

Steps to use:

1. rm ~/.vimrc
2. rm -rf ~/.vim
3. download .vimrc file
4. mkdir ~/.vim/undodir -p
5. curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
6. :PlugInstall
7. cd .vim/plugged/youcompleteme/
8. python install.py
