#!/usr/bin/env bash
source scripts/helpers.sh

function install_alfred() {
  ## Define the name of the tool being installed
  toolName="alfred"

  installationStarted $toolName

  brew cask install alfred
#  wget -P_tmp_ https://cachefly.alfredapp.com/Alfred_3.7_938.dmg
#  install_dmg _tmp_/Alfred_3.7_938.dmg

  ## Tureng Search
  open alfred://customsearch/Tureng/tureng/utf8/nospace/http%3A%2F%2Ftureng.com%2Ftr%2Fturkce-ingilizce%2F%7Bquery%7D

  ## Github Search
  open alfred://customsearch/Github/github/utf8/nospace/https%3A%2F%2Fgithub.com%2Fsearch%3Fq%3D%7Bquery%7D
  open alfred://customsearch/Github%20Profile%20or%20Project/githubp/utf8/nospace/https%3A%2F%2Fgithub.com%2F%7Bquery%7D
  
  applicationConfigured $toolName

  installationSucceed $toolName
}
