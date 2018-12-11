#!/usr/bin/env bash
source scripts/helpers.sh

function install_oh_my_zsh() {
  ## Define the name of the tool being installed
  toolName="oh-my-zsh"

  installationStarted $toolName

  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

  installationSucceed $toolName

  toolName="oh-my-zsh-plugins"

  installationStarted $toolName

  # Install Custom Plugins
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/jessarcher/zsh-artisan.git ~/.oh-my-zsh/custom/plugins/artisan
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  installationSucceed $toolName

  cp contents/zsh/.aliases ~/.aliases
  cp contents/zsh/.zshrc ~/.zshrc

  applicationConfigured $toolName
}
