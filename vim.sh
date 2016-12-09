#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function create_links {
    ln -sfv "$DIR/vim/vimrc" ~/.vimrc
    ln -sfv "$DIR/vim/bundle" ~/.vim/bundle
}

function init_submodule {
    cd "$DIR/vim/bundle/" && git submodule init && git submodule update
}

function install_deps {
    vim +PluginInstall +qall
}

mkdir -p ~/.vim/

create_links
init_submodule
install_deps
