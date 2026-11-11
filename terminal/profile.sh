#!/bin/zsh

# Locale: English
export LANG=en_US.UTF-8

# Default editor
export EDITOR=vim

# Default config directory
export XDG_CONFIG_HOME=$HOME/.config

# Keep PATH free of duplicates (applies to $path as well)
typeset -U path PATH

# Local secrets (tokens etc.). Not tracked by git: see ~/.secrets.zsh (chmod 600)
[[ -r $HOME/.secrets.zsh ]] && source $HOME/.secrets.zsh

# asdf (tool version manager)
export ASDF_DATA_DIR=$HOME/.asdf

# GO PATH
export GOPATH=${HOME}/projects/goprojects
export GOROOT=/usr/local/opt/go/libexec

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk

# Flutter
export FLUTTER_HOME=$HOME/projects/oss/flutter

# PATH (highest priority first)
path=(
    $HOME/.antigravity/antigravity/bin
    $ASDF_DATA_DIR/shims
    /usr/local/sbin
    $path
    $HOME/bin
    $GOPATH/bin
    $GOROOT/bin
    $ANDROID_HOME/emulator
    $ANDROID_HOME/cmdline-tools/latest/bin
    $ANDROID_HOME/platform-tools
    $FLUTTER_HOME/bin
)

# Java w/ asdf
source ~/.asdf/plugins/java/set-java-home.zsh

# RBENV (Disabled)
# eval "$(rbenv init - zsh)"

# GPG
export GPG_TTY=$(tty)

# depot_tools for Chromium project (on demand)
function enable_depot_tools {
    path+=($HOME/projects/oss/depot_tools)
}

# Emscripten - WebAssembly compiler toolchain
function enable_emscripten {
    source "$HOME/projects/oss/emsdk/emsdk_env.sh" > /dev/null
}

# Drop PATH entries that do not exist
path=(${^path}(N-/))
