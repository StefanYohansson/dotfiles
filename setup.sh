#!/bin/bash

deps=false

# Extract args
while [ "$1" != "" ]; do
    case $1 in
        --install-deps )           shift
            deps=$1
            ;;
    esac
    shift
done

function install_deps {
    if [ "$deps" = false ]; then
        return;
    fi
    if [ $1 = "ARCH" ]; then
        sudo pacman -S git vim curl jq;
    fi

    if [ $1 = 'DEBIAN' ]; then
        sudo apt install -y git vim-nox curl jq;
    fi

    if [ ! -d "~/.fzf" ]; then
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install
    fi
}

# Arch
if which pacman &> /dev/null; then
    install_deps 'ARCH';
fi

# Debian/Ubuntu
if which apt &> /dev/null; then
    install_deps 'DEBIAN';
fi

exit 0
