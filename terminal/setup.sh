#!/bin/sh

echo "Copy .vimrc"
cp .vimrc ~/

echo "Install utilities.."
./setup-utils.sh

echo "Install programs for development"
./setup-dev.sh
