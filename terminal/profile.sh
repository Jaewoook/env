#!/bin/zsh

# Locale: English
export LC_ALL=en_US.UTF-8
export LANG=$LC_ALL

# Homebrew(intel) sbin
export PATH="/usr/local/sbin:$PATH"

# Binaries
export PATH=$PATH:$HOME/bin

# asdf (tool version manager)
export ASDF_DATA_DIR=$HOME/.asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# GitHub Packages Publish Token
export GITHUB_PACKAGES_PUBLISH_TOKEN=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

# GO PATH
export GOPATH=${HOME}/projects/goprojects
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GROOT/bin

# Java w/ asdf
source ~/.asdf/plugins/java/set-java-home.zsh

# Anaconda3 PATH
export PATH=$PATH:/usr/local/anaconda3/bin

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
export FLUTTER_HOME=$HOME/projects/oss/flutter
export PATH=$PATH:$FLUTTER_HOME/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# RBENV (Disabled)
# eval "$(rbenv init - zsh)"

# GPG
export GPG_TTY=$(tty)

# depot_tools for Chromium project
function enable_depot_tools {
    export PATH="$PATH:$HOME/projects/oss/depot_tools"
}

enable_depot_tools

# Emscripten - WebAssembly compiler toolchain
function enable_emscripten {
    source "$HOME/projects/oss/emsdk/emsdk_env.sh" > /dev/null
}

# Added by Antigravity
export PATH="/Users/jaewookahn/.antigravity/antigravity/bin:$PATH"
