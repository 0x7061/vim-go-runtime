###############################################################
# => Install Script
###############################################################

cd ~/.vim-go-runtime

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Setting up base config ..."
echo "set runtimepath+=~/.vim_go_runtime" > ~/.vimrc
# Load base config and plugins
echo "source ~/.vim-go-runtime/submodules/amix-vimrc/vimrcs/basic.vim" >> ~/.vimrc
echo "source ~/.vim-go-runtime/vimrcs/plugins.vim" >> ~/.vimrc

echo "Installing plugins ..."

vim +PlugInstall +qall

echo "Setting up extended config ..."
# Load extended configs
echo "source ~/.vim-go-runtime/vimrcs/extended.vim" >> ~/.vimrc
echo "source ~/.vim-go-runtime/gvimrcs/shortcuts.vim" > ~/.gvimrc

echo "Setting up ctags for go ..."
echo "set tags=~/.vim-go-runtime/ctags/.ctags" >> ~/.vimrc

echo "Finished setting up! :)"

