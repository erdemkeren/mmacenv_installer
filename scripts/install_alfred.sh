#!/usr/bin/env bash
source scripts/helpers.sh

function install_alfred() {
  ## Define the name of the tool being installed
  toolName="alfred"

  installationStarted $toolName

  brew cask install alfred
#  wget -P_tmp_ https://cachefly.alfredapp.com/Alfred_3.7_938.dmg
#  install_dmg _tmp_/Alfred_3.7_938.dmg

  open alfred://customsearch/Tureng/tureng/utf8/nospace/http%3A%2F%2Ftureng.com%2Ftr%2Fturkce-ingilizce%2F%7Bquery%7D
  applicationConfigured $toolName

  installationSucceed $toolName
}
