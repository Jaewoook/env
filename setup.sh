#!/bin/sh

echo "Copy .vimrc"
cp ./terminal/.vimrc ~/

echo "Install utilities.."
sh ./setup-utils.sh

echo "Install programs for development"
sh ./setup-dev.sh
