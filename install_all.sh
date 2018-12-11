#!/usr/bin/env bash

set -xv

source scripts/install_brew.sh
source scripts/install_wget.sh
source scripts/install_iterm2.sh
source scripts/install_oh_my_zsh.sh
source scripts/install_atom.sh
source scripts/install_phpstorm_2016_1_2.sh
source scripts/create_dev_directory.sh
source scripts/install_virtual_box.sh
source scripts/install_vagrant.sh
source scripts/install_npm.sh
source scripts/install_yarn.sh
source scripts/install_snazzy.sh
source scripts/install_pure_prompt.sh
source scripts/install_slack.sh

function install_all() {
  install_brew
  install_wget
  install_iterm2
  install_oh_my_zsh
  install_atom
  install_phpstorm_2016_1_2
  install_virtual_box
  install_vagrant
  install_npm
  install_yarn
  install_snazzy
  install_pure_prompt
  install_slack
}

set +xv
