#!/usr/bin/env bash
source scripts/helpers.sh

function install_iterm2() {
  ## Define the name of the tool being installed
  toolName="iTerm2"

  installationStarted $toolName

  wget https://iterm2.com/downloads/stable/latest -O_tmp_/iTerm_Latest.zip
  unzip -q -d_tmp_ _tmp_/iTerm_Latest.zip
  mv _tmp_/iTerm.app /Applications/iTerm2.app

  installationSucceed $toolName
}
