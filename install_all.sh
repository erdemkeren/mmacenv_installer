#!/usr/bin/env bash

set -xv

mkdir _tmp_

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

rmdir _tmp_

set +xv
