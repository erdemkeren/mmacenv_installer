#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="oh-my-zsh"

installationStarted $toolName

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

installationSucceed $toolName

cp .zshrc ~/.zshrc
applicationConfigured $toolName
