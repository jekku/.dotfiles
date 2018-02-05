#!/bin/bash

# OH MY ZSH!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Pack all global settings and send them to home folder
cp zshrc ~/.zshrc
cp tool-versions ~/.tool-versions

# rebuild
source ~/.zshrc

# ASDF Erlang Build Prerequisites.
brew install autoconf automake libtool gnupg openssl
# ODBC Build tool for Erlang.
brew cask install java
# Entrust NodeJS asdf keys from asdf team
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# Fire away.
(cd ~ && asdf install)







