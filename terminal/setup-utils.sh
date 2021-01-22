#!/bin/sh

if ! command -v zsh &> /dev/null then
    echo "Install oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if ! command -v bat &> /dev/null then
    echo "Install bat command ("
    brew install bat
fi

if ! command -v lolcat &> /dev/null then
    echo "Install lolcat"
    brew install lolcat
fi

if ! command -v htop &> /dev/null then
    echo "Install htop"
    brew install htop
fi

if ! command -v al
echo "Install Alfred"
brew install --cask alfred
