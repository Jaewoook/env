#!/bin/sh

if [ ! command -v aws &> /dev/null ]; then
    echo "Install awscli"
    brew install awscli
fi

if [ ! command -v node &> /dev/null ]; then
    echo "Install node"
    brew install node
fi

if [ ! command -v go &> /dev/null ]; then
    echo "Install go"
    brew install go
fi

if [ ! command -v python3 &> /dev/null ]; then
    echo "Install python 3.x"
    brew install python3
fi

echo "Install VSCode"
brew install --cask visual-studio-code

echo "Install GitKraken"
brew install --cask gitkraken
