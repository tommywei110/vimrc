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
`big caviar here. Ycm is very sensitive about python version and what not
refer to: https://github.com/ycm-core/YouCompleteMe#installation
If using anaconda, need to run install.py with and point ycm to /usr/bin/python3
remember to check this part in the`
8. python install.py
