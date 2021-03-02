cp .vimrc ~/
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [[ $? -ne 0 ]];then
  cp -r .vim ~/
fi

vim -c "PlugInstall | p | p"
