#!/usr/bin/env bash
source scripts/helpers.sh

function install_homestead() {
  ## Define the name of the tool being installed
  toolName="homestead"

  installationStarted $toolName

  [ ! -d ~/.ssh/id_rsa ] && ssh-keygen -t rsa -C "erdemkeren@gmail.com" -f ~/.ssh/id_rsa -q -N ""

  vagrant box add laravel/homestead --provider=virtualbox
  git clone https://github.com/laravel/homestead.git ~/dev/Homestead
  cd ~/dev/Homestead
  git checkout $(git tag -l --sort=-v:refname | head -1)
  bash init.sh
  mv ~/dev/Homestead/Homestead.yaml ~/dev/Homestead/Homestead.bak.yaml
  cp contents/homestead/Homestead.yaml ~/dev/Homestead/

  pushd ~/dev/Homestead
  vagrant up
  popd

  applicationConfigured $toolName

  installationSucceed $toolName
}
