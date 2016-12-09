#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

user=""
email=""
github=""

# Extract args
while [ "$1" != "" ]; do
    case $1 in
        --user )           shift
            user=$1
            ;;
    esac
    case $1 in
        --email )           shift
            email=$1
            ;;
    esac
    case $1 in
        --github )           shift
            github=$1
            ;;
    esac
    shift
done

touch "$DIR/git/userinfo"

echo -e "[user]
  name = $user
  email = $email

[github]
  user = $github
" > "$DIR/git/userinfo"

ln -sfv "$DIR/git/gitconfig" ~/.gitconfig
ln -sfv "$DIR/git/userinfo" ~/.userinfo
